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
          <ProductItem
              v-for="cartProduct in allCartProducts"
              :product="cartProduct"
          />
          <div>
            <div class="flex flex-row justify-between p-5 border-b border-black">
              <p>Subtotal</p>
              <p>US${{ subtotal }}</p>
            </div>
            <div class="flex flex-row justify-between p-5 border-b border-black">
              <p>Discounts</p>
              <p>US${{ discounts }}</p>
            </div>
            <div class="flex flex-row justify-between p-5 border-b border-black">
              <p>Total</p>
              <p>US${{ subtotal - discounts }}</p>
            </div>
          </div>
        </div>
        <div class="mt-10 border-black border-t" v-if="bumpProductsPending.length > 0">
          <h2 class="text-xl font-bold my-5">
            Special offers for you
          </h2>
          <div v-for="product in bumpProductsPending" class="flex flex-row justify-between gap-x-5 mb-3">
            <div class="bg-white border-black border rounded w-3/4">
              <ProductItem
                  :product="product"
                  :allow-remove="false"
                  :display-offer="true"
              />
            </div>
            <div class="flex flex-col justify-center gap-2 w-1/4">
              <button v-on:click="acceptOffer(product)"
                      class="border-black border bg-black text-white px-3 py-2 rounded">
                Accept Offer
              </button>
              <button v-on:click="rejectOffer(product)" class="border-black border px-3 py-2 rounded">
                No, thanks
              </button>
            </div>
          </div>
        </div>
        <div class="mt-10 border-black border-t">
          <h2 class="text-xl font-bold my-5">
            Customers who bought these items also bought
          </h2>
          <div class="mb-3 grid grid-cols-4 gap-3">
            <ProductCard v-for="product in peopleAlsoBoughtProducts" :product="product"/>
          </div>
        </div>
      </div>
      <div class="w-3/5">
        <CheckoutForm/>
      </div>
    </div>
  </div>
</template>

<script setup>
import {Head} from '@inertiajs/vue3'
import {computed, ref} from "vue";
import CheckoutForm from "~/components/CheckoutForm.vue";
import ProductItem from "~/components/ProductItem.vue";
import ProductCard from "~/components/ProductCard.vue";

const props = defineProps({
  cartProducts: Array,
  bumpProductsAvailable: Array,
  peopleAlsoBoughtProducts: Array
})

const bumpProductsPending = ref(props.bumpProductsAvailable);
const bumpProductsAccepts = ref([]);
const bumpProductsRejected = ref([]);

const allCartProducts = computed(() => {
  return props.cartProducts.concat(bumpProductsAccepts.value);
})

const subtotal = computed(() => {
  return allCartProducts.value.reduce((a, b) => a + (b.price || 0), 0) / 100
})

const discounts = computed(() => {
  return bumpProductsAccepts.value.reduce((a, b) => a + (b.bump_price || 0), 0) / 100
})

function acceptOffer(product) {
  bumpProductsAccepts.value.push(product);
  bumpProductsPending.value = bumpProductsPending.value.filter(p => p.id !== product.id);
}

function rejectOffer(product) {
  bumpProductsRejected.value.push(product);
  bumpProductsPending.value = bumpProductsPending.value.filter(p => p.id !== product.id);
}

</script>