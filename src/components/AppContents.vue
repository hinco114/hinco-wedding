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
    :date-string="dateString"
    :map-options="mapOptions"
    :map-info="mapInfo"
  />
  <BankAccount :bankAccounts="bankAccounts" />
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

const dateString = '2023년 7월 7일 금요일 오전 10시'
const locationString = '천주교 수원 권선동성당'
const descriptionStrings = ['성당에서 가족끼리 조용히 예식을 진행할 예정입니다.']
const contents = [dateString, locationString]

const information = {
  groom: {
    name: '윤상현',
    parents: {
      father: '윤중한',
      mother: '장인경',
    },
    relation: '장남',
  },
  bride: {
    name: '임성은',
    parents: {
      father: '임좌상',
      mother: '이현진',
    },
    relation: '장녀',
  },
}

const bankAccounts = {
  groom: [
    {
      name: '윤중한',
      account: '국민은행',
      bank: '201-21-1109361',
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
