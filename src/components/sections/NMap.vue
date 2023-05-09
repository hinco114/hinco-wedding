<template>
  <div class="flex-col b-rd m-10">
    <h2 class="m-a">오시는 길</h2>
    <naver-map
      class="w-full h-100 m-t-2"
      :mapOptions="mapOptions"
      @onLoad="onLoadMap($event)"
    >
      <naver-marker
        :latitude="37.2530405"
        :longitude="127.0395801"
        @onLoad="onLoadMarker($event)"
        @click="onClickMarker"
      ></naver-marker>
      <naver-info-window
        :options="anchorOptions"
        class="cursor-pointer"
        :marker="marker"
        :open="true"
        @click="onClickMarker"
      >
        <div class="infowindow-style">권선동 성당</div>
      </naver-info-window>
    </naver-map>
  </div>
</template>
<script setup lang="ts">
import { ref } from 'vue'
import { NaverInfoWindow, NaverMap, NaverMarker } from 'vue3-naver-maps'

const map = ref()
const marker = ref()

const mapOptions = {
  latitude: '37.2530405', // 지도 중앙 위도
  longitude: '127.0395801', // 지도 중앙 경도
  zoom: 13,
}

const onLoadMap = mapObject => {
  map.value = mapObject
}

const onLoadMarker = markerObject => {
  marker.value = markerObject
}

const anchorOptions: Partial<naver.maps.InfoWindowOptions> = {
  anchorSize: { width: 5, height: 10 },
}

const onClickMarker = () => {
  window.open('https://naver.me/xFpoOwe1')
}
</script>
