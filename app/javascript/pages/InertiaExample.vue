<template>
  <Head title="Inertia + Vite Ruby + Vue Example" />

  <div class="p-10">
    <h1 class="text-2xl font-bold mb-10">Hello {{ name }}!</h1>

    <div>
      <button class="p-5 bg-amber-300 rounded-2xl" type="button" @click="count++">
        count is {{ count }}
      </button>
    </div>
  </div>
</template>

<script setup>
import { Head } from '@inertiajs/vue3'
import { ref } from 'vue'

defineProps({
  name: String,
})

const count = ref(0)
</script>