<template>
  <Flicking
    class="h-500px rounded m-5 m-b-20"
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
</template>
<script setup>
import Flicking from '@egjs/vue3-flicking'
import { AutoPlay } from '@egjs/flicking-plugins'
import { ref } from 'vue'

const plugins = [
  new AutoPlay({
    duration: 2500,
    direction: 'NEXT',
    stopOnHover: false,
  }),
]
const images = ref([])

for (let i = 1; i <= 4; i++) {
  images.value.push(`/images/0${i}.JPG`)
}
</script>

<style>
@import url('https://unpkg.com/@egjs/flicking/dist/flicking.css');
</style>
