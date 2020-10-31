<template>
  <router-view/>
</template>

<style lang="scss">
  @use '@/assets/styles/bulma/bulma.sass';

  // Budget dark-mode for those who ask for it :P
  @media (prefers-color-scheme: dark) {
    $--marble: #fafafa;
    $--darkness: #333333;
    html, body {
      color: $--marble;
      background: $--darkness;
    }
    .title, .subtitle {
      color: $--marble;
    }
  }
</style>
