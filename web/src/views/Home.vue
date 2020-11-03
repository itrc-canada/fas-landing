<template>
  <section class="section">
    <!-- Title -->
    <section class="section">
      <div class="container">
        <div class="level">
          <div class="level-left">
            <div class="level-item">
              <div class="container">
                <h1 class="title is-1">Force Status</h1>
                <p class="">{{ currentTime }}</p>
              </div>
            </div>
          </div>
          <div class="level-right">
            <img src="@/assets/itrc_emblem.png" alt="" class="level-item">
          </div>
        </div>
      </div>
    </section>
    <!-- Force -->
    <section class="section">
      <div class="container">
        <h4 class="subtitle is-4">Servers</h4>
        <div class="level">
          <div class="level-left">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/Ef1AWlxP/Force.svg" alt="Force-Status-SVG" class="level-item">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/OFSz4FEm/FAS.svg" alt="FAS-Status-SVG" class="level-item">
          </div>
        </div>
      </div>
    </section>
    <!-- Force Application Server -->
    <section class="section">
      <div class="container">
        <h4 class="subtitle is-4">FAS Apps</h4>
        <div class="level">
          <div class="level-left">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/mlX9ClKR/FAS-Apps.svg" alt="FAS-Apps-Status-SVG" class="level-item">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/xP4gC36Z/FAS-Landing.svg" alt="FAS-Landiong-Status-SVG" class="level-item">
          </div>
        </div>
      </div>
    </section>
    <!-- Book -->
    <section class="section">
      <div class="container">
        <h4 class="subtitle is-4">Book</h4>
        <div class="level">
          <div class="level-left">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/7hEVgVGf/Book.svg" alt="Book-Status-SVG" class="level-item" />
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/9J1HMA0I/Book-API.svg" alt="Book-API-Status-SVG" class="level-item">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/-kdMrgLt/Book-Q.svg" alt="Book-Q-Status-SVG" class="level-item">
            <img src="https://healthchecks.io/badge/d8c9adaf-5310-4bc8-a2c8-ade0ee/Nplrc9-o/Book-Web.svg" alt="Book-Web-Status-SVG" class="level-item">
          </div>
        </div>
      </div>
    </section>
  </section>
</template>

<script>
// @ is an alias to /src
import { format } from 'date-fns'
export default {
  name: 'Home',
  components: {
    
  },
  computed: {

  },
  data () {
    return {
      currentTime: '🤔',
    }
  },

  mounted () {
    // Updates the time
    setInterval(() => {
      this.currentTime = format(new Date(), 'EEEE, MMMM dd pp ')
    }, 1000)

    // Refreshed the page every 60 seconds (reloading SVGs from healthchecks)
    setTimeout(() => {
      this.$router.go()
    }, 60000)
  }

}
</script>
