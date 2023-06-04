<template>
  <div class="flex flex-col gap-5 pb-10">
    <img
      class="w-full rounded object-contain"
      v-for="item in images"
      :key="item"
      :src="item"
    />
  </div>
</template>
<script setup>
import { ref } from 'vue'

const images = ref([])
for (let i = 2; i <= 4; i++) {
  if (i < 10) images.value.push(`/images/0${i}.jpg`)
}
</script>
