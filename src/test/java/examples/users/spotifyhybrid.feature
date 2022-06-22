Feature: Spotify Test

  Background:
    * configure driver = { type: 'chromedriver', executable: 'src/test/resources/chromedriver.exe' }
    * url baseUrl
    * def uId = '31m5gipvbzik6nvkdvvzhhbgbkni'

  Scenario: Successful login and create playlist
    Given driver 'https://open.spotify.com/'
    * maximize()
    When click('button[data-testid=login-button]')
    And input('#login-username','yonca.kanmaz@testinium.com')
    And input('#login-password','1q2w3e4r5Test')
    And click('#login-button')
    * def requestBody = {"name": "MentorLabs Faz2","description": "Karate Faz2 Test","public": false}
    * header Authorization = 'Bearer ' +myToken
    Given path '/users/' +uId+ '/playlists'
    And request requestBody
    When method POST
    Then status 201
    And def playlistId = response.id
    * header Authorization = 'Bearer ' +myToken
    Given path '/search'
    And param q = 'The Final Countdown'
    And param type = 'track'
    When method GET
    And def URI = response.tracks.items[0].uri
    * header Authorization = 'Bearer ' +myToken
    Given path '/playlists/' +playlistId+ '/tracks'
    * def rBody = {uris:[#(URI)]}
    And request rBody
    When method POST
    And waitFor('.AINMAUImkAYJd4ertQxy').click()
    And waitFor('button[data-testid=play-button]').click()
    * delay(30000)
    * header Authorization = 'Bearer ' +myToken
    Given path '/me/player/currently-playing'
    When method GET
    And match response.is_playing == true
    And match response.item.uri == URI
    And match response.item.name == 'The Final Countdown'







      





    

