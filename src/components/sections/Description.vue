<template>
  <div>
    <span>2023. 7. 7. (Fri)</span>
    <div class="text-3 mt-0">
      <span v-if="days > 0">
        <span class="text-rose-500">{{ days }}</span> days left
      </span>
      <span v-else-if="days === 0">
        <span class="text-rose-500">D-Day</span>
      </span>
      <span v-else>
        <span class="text-rose-500">{{ -days }}</span> days passed
      </span>
    </div>
  </div>
</template>

<script setup>
const marryDate = new Date('2023-07-07')
const today = new Date()

const diff = marryDate.getTime() - today.getTime()
const days = Math.floor(diff / (1000 * 60 * 60 * 24))
</script>
