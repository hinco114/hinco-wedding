<template>
  <div class="p-t-15">
    <div class="bg-yellow-100">
      <div class="arch-image m-a">
        <img
          class="w-350px rounded"
          src="/images/000.jpeg"
          alt="first-image"
        />
      </div>
    </div>

    <VerticalLine />

    <div class="m-a m-b-10">
      <img
        class="w-350px rounded"
        src="/images/001.jpeg"
        alt="second-image"
      />
    </div>

    <VerticalLine />
    <div class="m-a">
      <img
        class="w-350px rounded"
        src="/images/002.jpeg"
        alt="third-image"
      />
    </div>
  </div>
</template>
<script setup>
import VerticalLine from '../utils/VerticalLine.vue'
</script>
