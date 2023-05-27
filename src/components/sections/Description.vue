<template>
  <div class="h-400px flex flex-col flex-justify-center">
    <VerticalLine />

    <p class="text-left m-t-2 m-l-10 text-6 m-b-2">안내말씀</p>
    <div class="m-a m-l-10 h-1px w-full max-w-85px bg-black"></div>
    <div class="text-right m-t-5 m-r-10">
      <p>성당에서 가족끼리 예식을 진행할 예정입니다.</p>
      <p>많은 분들의 축복은 마음으로 받겠습니다.</p>
    </div>
  </div>
</template>

<script setup>
import VerticalLine from '../utils/VerticalLine.vue'
</script>
