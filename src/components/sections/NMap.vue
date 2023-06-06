<template>
  <div>
    <div class="m-a mt-30">
      <p class="text-center text-6 mb-2">시간 및 장소</p>
      <div class="m-a h-1px w-full max-w-110px bg-black"></div>
    </div>

    <div class="text-center pb-5">
      <p>{{ dateString }}</p>
    </div>

    <div class="m-a pl-10 pr-10">
      <naver-map
        class="h-50"
        :mapOptions="mapOptions"
        @onLoad="onLoadMap($event)"
        @click="onClickMarker"
      >
        <naver-marker
          :latitude="lat"
          :longitude="lng"
          @onLoad="onLoadMarker($event)"
        ></naver-marker>
        <naver-info-window
          v-if="mapInfo"
          :options="anchorOptions"
          class="cursor-pointer"
          :marker="marker"
          :open="true"
        >
          <div class="infowindow-style">{{ mapInfo?.name }}</div>
        </naver-info-window>
      </naver-map>
      <div
        v-if="mapInfo"
        class="bg-gray-100 pt-2 pb-2"
      >
        지도를 클릭하면 자세한 정보가 보입니다.
      </div>
    </div>
  </div>
</template>
<script setup lang="ts">
import { normalizeProps, ref } from 'vue'
import { NaverInfoWindow, NaverMap, NaverMarker } from 'vue3-naver-maps'

const props = defineProps({
  dateString: {
    type: String,
    required: true,
  },
  mapOptions: {
    type: Object as () => naver.maps.MapOptions,
    required: true,
  },
  mapInfo: {
    type: Object as () => { name: string; url: string },
    required: false,
  },
})

// @ts-ignore
const { mapOptions } = normalizeProps(props)
const lat = ref(Number(mapOptions.latitude))
const lng = ref(Number(mapOptions.longitude))

const map = ref<naver.maps.Map>()
const marker = ref<naver.maps.Marker>()

const onLoadMap = (mapObject: naver.maps.Map) => {
  map.value = mapObject
}

const onLoadMarker = (markerObject: naver.maps.Marker) => {
  marker.value = markerObject
}

const anchorOptions: Partial<naver.maps.InfoWindowOptions> = {
  anchorSize: { width: 5, height: 10 },
}

const onClickMarker = () => {
  if (props.mapInfo?.url) {
    window.open(props.mapInfo?.url?.toString())
  }
}
</script>
