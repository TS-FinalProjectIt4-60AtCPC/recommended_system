import Vue from 'vue';
import VueRouter from 'vue-router';

import { LoadingState } from 'SSP/config/loading-state';
import Navigation from 'components/Navigation/navigation';
import Loader from 'components/Loader/loader';

Vue.use(VueRouter);

import 'SSP/config/http';
import routes from 'SSP/routes';
import 'SSP/style.scss';

export const router = new VueRouter({
  routes,
  mode: 'history',
  linkActiveClass: 'active'
});

new Vue({
  router,
  components: {
    Navigation,
    Loader
  },

  data(){
    return {
      isLoading: false
    };
  },

  created(){
    LoadingState.$on('toggle', (isLoading) => {
      this.isLoading = isLoading;
    });
  }
}).$mount('#app');