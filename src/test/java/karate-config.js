function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myToken: 'BQAL2WkABISOPC8IKlCLu3uBtN8FqGwLq0pgPPRA6MKLedmcCQVlAHnmhXrXKZqcVoYSmjiJJhzAoBkF2euIMvlFX5Y8CW3IU5EvhAV_xsGXx9OL5v2lulrZEyuq9F_84em94j2e4FMEv8QZZkyJovhYmQ_mdY99Jy7sgt1cLEuD0ckj-q0Si80l6G0yYGhb0_YLSxxBgAPuojsl7xpaD4GYahYOBU1_gCHtkCxzgDcMSWM5vNTYN_nOmfYE3kQeC3gDr75Aq4d-u4ey',
    baseUrl: 'https://api.spotify.com/v1'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}