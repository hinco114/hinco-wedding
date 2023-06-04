<template>
  <div class="m-3">
    <Flicking
      :options="{
        align: 'center',
        circular: true,
        panelsPerView: 1,
        autoResize: true,
        duration: 500,
        moveType: 'strict',
      }"
      :plugins="plugins"
    >
      <img
        class="h-full w-full rounded object-contain m-a"
        v-for="item in images"
        :key="item"
        :src="item"
      />
      <template #viewport>
        <div class="flicking-pagination"></div>
      </template>
    </Flicking>
  </div>
</template>
<script setup>
import Flicking from '@egjs/vue3-flicking'
import { AutoPlay, Pagination } from '@egjs/flicking-plugins'
import { ref } from 'vue'
import '@egjs/flicking-plugins/dist/pagination.css'

const plugins = [
  new AutoPlay({
    duration: 2500,
    direction: 'NEXT',
    stopOnHover: false,
  }),
  new Pagination({ type: 'bullet' }),
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
