<template>
  <Subject />
  <Introduce
    :information="information"
    :contents="contents"
  />
  <Description :content="descriptionStrings" />
  <StraightPictures />
  <Flicker />
  <NMap
    v-if="!hideDetails"
    :date-string="dateString"
    :map-options="mapOptions"
    :map-info="mapInfo"
  />
  <BankAccount
    v-if="!hideDetails"
    :bankAccounts="bankAccounts"
  />
  <Footer />
</template>

<script setup>
import Subject from './sections/Subject.vue'
import Description from './sections/Description.vue'
import NMap from './sections/NMap.vue'
import Footer from './sections/Footer.vue'
import Flicker from './sections/Flicker.vue'
import Introduce from './sections/Introduce.vue'
import StraightPictures from './sections/StraightPictures.vue'
import BankAccount from './sections/BankAccount.vue'
import { ref } from 'vue'

// const hostname = ref(window.location.hostname)
// const hideDetails = ref(hostname.value === 'wedding.hinco.dev')
const hideDetails = ref(false)

const dateString = '2023년 9월 16일 토요일 오전 10시'
const locationString = '천주교 수원 권선동성당'
const descriptionStrings = [
  '예식은 직계 가족만 모여 혼배미사로 진행됩니다.',
  '하느님의 뜻대로 진정한 사랑과 신의로 살아갈 수 있도록 축하와 격려 부탁드립니다.',
]
let contents = [dateString, locationString]
if (hideDetails.value) {
  contents = []
}

const information = {
  groom: {
    name: '윤상현',
    parents: {
      father: '윤중한',
      mother: '장인경',
    },
    relation: '아들',
  },
  bride: {
    name: '임성은',
    parents: {
      father: '임좌상',
      mother: '이현진',
    },
    relation: '딸',
  },
}

const bankAccounts = {
  groom: [
    {
      name: '윤중한',
      account: '국민은행',
      bank: '204-21-1109361',
    },
    {
      name: '윤상현',
      account: '신한은행',
      bank: '380-12-149911',
    },
  ],
  bride: [
    {
      name: '임성은',
      account: '우리은행',
      bank: '1002-748-145813',
    },
  ],
}

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

const mapInfo = {
  name: '권선동 성당',
  url: 'https://naver.me/xFpoOwe1',
}
</script>
