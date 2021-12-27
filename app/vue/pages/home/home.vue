<template>
  <div>
    <h1 class="text-2xl font-bold">
      Code Challenge: Airports
    </h1>

    <h2 class="mt-10 text-xl font-semibold">
      All Airports
    </h2>

    <div>
      <div v-for="airport in airports"
        :key="airport.iata"
        class="flex items-center p-5 mt-5 text-gray-800 border border-gray-200 rounded-lg shadow-sm hover:border-blue-600 focus:border-blue-600 focus:ring focus:ring-blue-200 focus:outline-none">
        <div>
          {{ airport.name }}
        </div>
        <div class="ml-auto text-mono">
          {{ airport.country }}
        </div>
      </div>

      <p class="flex items-center space-x-1">
        <button @click="prevPage" :disabled="cantGoBack" class="px-4 py-2 mt-2 text-gray-700 bg-gray-200 rounded-md hover:bg-blue-400 hover:text-white">Previous</button>
        <button class="px-4 py-2 mt-2 text-gray-700 bg-gray-200 rounded-md">{{this.currentPage}}</button>
        <button @click="nextPage" :disabled="cantGoForward" class="px-4 py-2 mt-2 text-gray-700 bg-gray-200 rounded-md hover:bg-blue-400 hover:text-white">Next</button>
      </p>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import axios from '~plugins/axios'

import Airport from '~types/airport'

interface Data {
  airports: Airport[];
  currentPage: 1;
  totalPages: 0;
}

export default Vue.extend({
  data(): Data {
    return {
      airports: [],
      currentPage: 1,
      totalPages: 0,
    }
  },
  mounted() {
    this.loadAirports()
  },
  computed:{
    cantGoBack(): boolean {
      return this.currentPage === 1;
    },
    cantGoForward(): boolean {
      return this.currentPage > (this.totalPages -1);
    },
  },
  methods: {
    async loadAirports() {
      const response = await axios.get('/airports?page='+this.currentPage, { params: { countries: ['AT', 'CH', 'US'] } })
      this.airports = response.data.data
      this.totalPages = response.data.pagy.pages;
    },
    nextPage:function() {
      this.currentPage++;
      this.loadAirports();
    },
    prevPage:function() {
      if(this.currentPage > 1) this.currentPage--;
      this.loadAirports();
    },
  },
})
</script>
