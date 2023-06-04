<template>
  <Subject />
  <Introduce />
  <Description />
  <StraightPictures />
  <Flicker />
  <NMap />
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
</script>
