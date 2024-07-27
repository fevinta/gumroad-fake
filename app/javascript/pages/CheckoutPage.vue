<template>
  <Head title="Checkout"/>


  <div>

    <div class="border-b border-black">
      <div class="max-w-7xl mx-auto">
        <div class="flex flex-row justify-between py-10 ">
          <h1 class="text-4xl">Checkout</h1>
          <button class="border border-black px-5 py-3 rounded">Continue Shopping</button>
        </div>
      </div>
    </div>

    <div class="flex flex-row max-w-7xl mx-auto gap-x-20 py-16">
      <div class="w-full">
        <div class="bg-white border-black border rounded ">
          <div v-for="i in [1,2,3,4]" class="flex flex-row w-full border-black border-b">
            <img src="https://public-files.gumroad.com/5lv3b9r334f5dhu5xpu44zmclmtr" class="h-32 w-32" alt="">
            <div class="w-full p-4 flex flex-col justify-between">
              <div class="w-full">
                <div class="flex flex-row justify-between w-full">
                  <p class="font-bold underline text-sm">The Complete Guide to Rails Performance</p>
                  <p>US$50</p>
                </div>
                <p class="mt-1 text-sm text-gray-700 underline">Nate Berkopec</p>
              </div>
              <div class="w-full flex flex-row justify-between text-sm">
                <p class=""><span class="font-bold">Qty:</span> 1</p>
                <button class="text-gray-700 underline">Remove</button>
              </div>
            </div>
          </div>
          <div>
            <div class="flex flex-row justify-between p-5 border-b border-black">
              <p>Subtotal</p>
              <p>US$50</p>
            </div>
            <div class="flex flex-row justify-between p-5 border-b border-black">
              <p>Discounts</p>
              <p>US$0</p>
            </div>
            <div class="flex flex-row justify-between p-5 border-b border-black">
              <p>Total</p>
              <p>US$50</p>
            </div>
          </div>
        </div>
      </div>
      <div class="w-3/5">
      <div class="bg-white border-black border rounded">
        <div class="p-5 border-b border-black">
          <label class="font-bold">Email address</label>
          <input type="email" class="w-full border border-black rounded px-3 py-3 mt-2">
        </div>
        <div class="p-5 border-b border-black">
          <div class="mb-5">
            <label class="font-bold">Name on card</label>
            <input type="email" class="w-full border border-black rounded px-3 py-3 mt-2">
          </div>
          <div>
            <label class="font-bold">Card information</label>
            <input type="email" class="w-full border border-black rounded px-3 py-3 mt-2">
          </div>
        </div>
        <div class="p-5 border-b border-black">
          <button class="bg-black text-white w-full py-4 rounded">Pay</button>
        </div>
      </div>
      </div>
    </div>

  </div>

</template>

<script setup>
import {Head} from '@inertiajs/vue3'

defineProps({})

</script>