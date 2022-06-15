function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myToken: 'BQDBWtNUZWQ30dIs3gPBHFTH76zVtkEf3a-Sk1aA9sRJQphtvzjxiiYwm2-5Rogk0_2R5KLYbaMBeheFdyh0BpUiVCr2OLaEcf22pP-kf4zWylwcMv3rco6ppxRhIdLlDOJhYDf9HO47TgX2pBHuuXfy6GPALtKhGR-Emf4Jan0USiExVeoKLqfON7UXCsJ1ZRNNNNIa2bUm4ffKjc395sjmWk0dBmiSp4LZ_UCMN_5Xj6cyChQj39KBCU_pYmh9hg',    baseUrl: 'https://api.spotify.com/v1'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}