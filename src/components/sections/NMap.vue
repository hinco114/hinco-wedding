<template>
  <div>
    <div class="m-a mt-30">
      <p class="text-center text-6 mb-2">시간 및 장소</p>
      <div class="m-a h-1px w-full max-w-110px bg-black"></div>
    </div>

    <div class="text-center pb-5">
      <p class="font-mapo">2023년 7월 7일 금요일 오전 10시</p>
    </div>

    <div class="m-a pl-10 pr-10">
      <naver-map
        class="h-50"
        :mapOptions="mapOptions"
        @onLoad="onLoadMap($event)"
        @click="onClickMarker"
      >
        <naver-marker
          :latitude="37.2530405"
          :longitude="127.0395801"
          @onLoad="onLoadMarker($event)"
        ></naver-marker>
        <naver-info-window
          :options="anchorOptions"
          class="cursor-pointer"
          :marker="marker"
          :open="true"
        >
          <div class="infowindow-style">권선동 성당</div>
        </naver-info-window>
      </naver-map>
      <div class="bg-gray-100 pt-2 pb-2">지도를 클릭하면 자세한 정보가 보입니다.</div>
    </div>
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
