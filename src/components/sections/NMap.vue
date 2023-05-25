<template>
  <div class="flex-col b-rd m-10">
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

const map = ref<naver.maps.Map>()
const marker = ref<naver.maps.Marker>()

const mapOptions = {
  latitude: '37.2530405', // 지도 중앙 위도
  longitude: '127.0395801', // 지도 중앙 경도
  zoom: 13,
  draggable: false,
  scrollWheel: false,
  disableDoubleClickZoom: true,
  disableDoubleTapZoom: true,
  disableTwoFingerTapZoom: true,
  logoControl: false,
  mapDataControl: false,
  pinchZoom: false,
  scaleControl: false,
}

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
  window.open('https://naver.me/xFpoOwe1')
}
</script>
