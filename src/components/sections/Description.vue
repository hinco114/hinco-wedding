<template>
  <div class="mt-30 mb-30">
    <p class="text-center text-6 mb-1">안내말씀</p>
    <div class="m-a h-1px w-full max-w-85px bg-black"></div>
    <div class="text-center mt-5">
      <p v-for="line in content">{{ line }}</p>
    </div>
  </div>
</template>

<script setup lang="ts">
defineProps({
  content: {
    type: Array[String],
    required: true,
  },
})
</script>
