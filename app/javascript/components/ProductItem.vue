<script setup>
 defineProps({
   product: Object,
   allowRemove: {
      type: Boolean,
      default: true,
   },
   displayOffer: {
      type: Boolean,
      default: false,
   },
 })
</script>

<template>
  <div class="flex flex-row w-full border-black border-b">
    <img :src="product.image" class="h-32 w-32 border-r border-black" :alt="product.name">
    <div class="w-full p-4 flex flex-col justify-between">
      <div class="w-full">
        <div class="flex flex-row justify-between w-full">
          <p class="font-bold underline text-sm">
            {{ product.name }}
          </p>
          <p :class="displayOffer ? 'line-through': ''">US${{ product.price / 100 }}</p>
        </div>
        <div class="flex flex-row justify-between w-full">
          <p class="text-gray-700 underline text-sm">
            {{ product.author }}
          </p>
          <p v-if="displayOffer">
            US${{ product.bump_price / 100 }}
          </p>
        </div>
      </div>
      <div class="w-full flex flex-row justify-between text-sm" v-if="allowRemove">
        <div>
          <span class="font-bold">Qty:</span> 1
        </div>
        <button class="text-gray-700 underline">Remove</button>
      </div>
    </div>
  </div>
</template>