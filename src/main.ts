import { createApp } from 'vue'
import './style.css'
import 'virtual:uno.css'
import App from './App.vue'
import { createNaverMap } from 'vue3-naver-maps'

const vue = createApp(App)
vue
  .use(createNaverMap, {
    clientId: 'okbta0qpoe', // Required
  })
  .mount('#app')
