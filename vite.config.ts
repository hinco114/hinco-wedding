import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import UnoCSS from 'unocss/vite'
import { presetAttributify, presetUno } from 'unocss'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    UnoCSS({
      presets: [presetAttributify(), presetUno()],
    }),
    vue(),
  ],
  server: {
    port: 3000,
    host: true,
  },
})
