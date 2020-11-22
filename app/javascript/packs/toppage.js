import Vue from 'vue/dist/vue.esm.js'
import Header from './components/header.vue'
import Index from './components/index.vue'
import AvailableGroup from './components/AvailableGroup.vue'

var app = new Vue({
  el: '#app',
  components: {
    'navbar': Header,
    'contents' : Index,
    'availablegroup' : AvailableGroup
  }
});