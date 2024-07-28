<script setup>
defineProps({
  product: Object
})
</script>

<template>
  <div class="bg-white border-black border rounded w-full">
    <div>
      <img class="h-48 border-b border-black rounded" :src="product.image" :alt="product.name"/>
    </div>
    <div class="p-4">
      <h1>{{product.name}}</h1>
      <p class="text-sm mt-2 underline">{{product.author}}</p>
    </div>
  </div>
</template>