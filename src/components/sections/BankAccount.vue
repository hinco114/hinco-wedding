<template>
  <div class="mt-20 mb-20">
    <div class="flex flex-row justify-center gap-5 mt-5">
      <div class="flex flex-row justify-center gap-6">
        <button @click="openModal">계좌번호 보기</button>
      </div>
    </div>
  </div>

  <div
    v-if="props.bankAccounts && openModalVar"
    class="modal"
    @click="handleOutsideClick"
  >
    <div class="modal-content">
      <div class="flex flex-justify-around">
        <div class="flex flex-col gap-20">
          <div class="flex flex-col">
            <h2>신랑측</h2>
            <div class="flex flex-col gap-3">
              <div
                class="flex flex-row"
                v-for="account in props.bankAccounts?.groom"
              >
                <span class="ml-5 mr-3">{{ account.name }}</span>
                <span class="mr-3">{{ account.account }}</span>
                <span>{{ account.bank }}</span>
              </div>
            </div>
          </div>
          <div class="flex flex-col">
            <h2>신부측</h2>
            <div class="flex flex-col gap-3">
              <div
                class="flex flex-row"
                v-for="account in props.bankAccounts?.bride"
              >
                <span class="ml-5 mr-3">{{ account.name }}</span>
                <span class="mr-3">{{ account.account }}</span>
                <span>{{ account.bank }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <button
        class="mt-10 mb-3"
        @click="closeModal"
      >
        닫기
      </button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref, defineProps } from 'vue'

type BankAccount = {
  name: string
  account: string
  bank: string
}

const props = defineProps({
  bankAccounts: {
    type: Object as () => {
      groom: BankAccount[]
      bride: BankAccount[]
    },
    required: true,
  },
})

const openModalVar = ref(false)

// 모달 열기
const openModal = () => {
  openModalVar.value = true
}

// 모달 닫기
const closeModal = () => {
  openModalVar.value = false
}

const handleOutsideClick = (event: Event) => {
  // 바깥 영역 클릭시 close 처리
  if (event.target === event.currentTarget) {
    closeModal()
  }
}
</script>

<style>
/* 모달 스타일 */
.modal {
  display: flex;
  position: fixed;
  z-index: 9999;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  align-items: center;
  background-color: rgba(0, 0, 0, 0.5); /* 배경을 반투명하게 설정합니다 */
}

.modal-content {
  max-width: 300px;
  background-color: #fefefe;
  margin: 10% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

button {
  background-color: #ffffff;
  border: 1px solid #222222;
  border-radius: 8px;
  box-sizing: border-box;
  color: #222222;
  cursor: pointer;
  display: inline-block;
  font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif;
  font-size: 16px;
  font-weight: 600;
  line-height: 20px;
  margin: 0;
  outline: none;
  padding: 13px 23px;
  position: relative;
  text-align: center;
  text-decoration: none;
  touch-action: manipulation;
  transition: box-shadow 0.2s, -ms-transform 0.1s, -webkit-transform 0.1s, transform 0.1s;
  user-select: none;
  -webkit-user-select: none;
  width: auto;
}

button:focus-visible {
  box-shadow: #222222 0 0 0 2px, rgba(255, 255, 255, 0.8) 0 0 0 4px;
  transition: box-shadow 0.2s;
}

button:active {
  background-color: #f7f7f7;
  border-color: #000000;
  transform: scale(0.96);
}

button:disabled {
  border-color: #dddddd;
  color: #dddddd;
  cursor: not-allowed;
  opacity: 1;
}
</style>
