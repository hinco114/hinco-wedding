<template>
  <div class="bg-yellow-100 pt-1 pb-10">
    <VerticalLine />
    <div class="m-a mt-10">
      <p class="text-center text-8 m-b-2">사진첩</p>
      <div class="m-a m-b-3 h-1px w-full max-w-90px bg-black"></div>
    </div>
    <Flicking
      class="h-500px rounded m-5"
      :options="{
        align: 'center',
        circular: true,
        panelsPerView: 1,
        autoResize: false,
        duration: 500,
        moveType: 'strict',
      }"
      :plugins="plugins"
    >
      <img
        class="h-full w-full rounded object-contain"
        v-for="item in images"
        :key="item"
        :src="item"
      />
    </Flicking>
  </div>
</template>
<script setup>
import Flicking from '@egjs/vue3-flicking'
import { AutoPlay } from '@egjs/flicking-plugins'
import { ref } from 'vue'
import VerticalLine from '../utils/VerticalLine.vue'

const plugins = [
  new AutoPlay({
    duration: 2500,
    direction: 'NEXT',
    stopOnHover: false,
  }),
]
const images = ref([])

for (let i = 1; i <= 15; i++) {
  if (i < 10) images.value.push(`/images/pic0${i}.JPG`)
  else images.value.push(`/images/pic${i}.JPG`)
}
</script>

<style>
@import url('https://unpkg.com/@egjs/flicking/dist/flicking.css');
</style>
