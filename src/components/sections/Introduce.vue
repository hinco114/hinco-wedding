<template>
  <div class="pt-30 pb-30">
    <div class="flex flex-col font-mapo">
      <div class="flex flex-row justify-center gap-23">
        <div
          v-for="key in Object.keys(information)"
          class="flex flex-col gap-2"
        >
          <div class="flex flex-col write-vertical-left text-5">
            <span>{{ information[key].parents.father }}</span>
            <span>{{ information[key].parents.mother }}</span>
          </div>
          <div class="write-normal mt-4">의</div>
          <div class="write-normal mt-1 text-5">{{ information[key].relation }}</div>
        </div>
      </div>
      <div class="flex flex-row justify-center gap-5 text-7 mt-10 mb-10">
        <span>{{ information.groom.name }}</span>
        <span>&</span>
        <span>{{ information.bride.name }}</span>
      </div>
    </div>

    <p
      v-for="content in contents"
      class="font-mapo"
    >
      {{ content }}
    </p>
  </div>

  <div>
    <img
      class="w-full"
      src="/images/01.jpg"
      alt="third-image"
    />
  </div>
</template>
<script setup>
defineProps({
  information: {
    groom: {
      name: String,
      parents: {
        father: String,
        mother: String,
      },
      relation: String,
    },
    bride: {
      name: String,
      parents: {
        father: String,
        mother: String,
      },
      relation: String,
    },
    required: true,
  },
  contents: {
    type: [Array],
    required: true,
  },
})
</script>
