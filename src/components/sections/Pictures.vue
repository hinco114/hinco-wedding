<template>
  <div>
    <el-carousel
      :pause-on-hover="false"
      arrow="never"
      indicator-position="none"
      :autoplay="true"
    >
      <el-carousel-item
        v-for="item in images"
        :key="item"
      >
        <img
          class="h-full w-full object-contain"
          :src="item"
        />
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
<script setup lang="ts">
import { ref } from 'vue'

const images = ref<string[]>([])

for (let i = 1; i <= 4; i++) {
  images.value.push(`/images/0${i}.jpeg`)
}
</script>
