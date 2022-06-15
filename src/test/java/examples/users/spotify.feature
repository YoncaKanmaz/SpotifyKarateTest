Feature: Spotify Api Test

  Background:
    * url baseUrl
    * def uId = '31m5gipvbzik6nvkdvvzhhbgbkni'



  Scenario: Create Playlist, Search Bohemian Rhapsody And Add Song To Playlist
    * def requestBody = {"name": "MentorLabs Api Test","description": "Karate Api Test","public": false}
    * header Authorization = 'Bearer ' +myToken
    Given path '/users/' +uId+ '/playlists'
    And request requestBody
    When method POST
    Then status 201
    And def playlistId = response.id
    * print playlistId
    * header Authorization = 'Bearer ' +myToken
    Given path '/search'
    And param q = 'Bohemian Rhapsody'
    And param type = 'track'
    When method GET
    And def URI = response.tracks.items[0].uri
    * header Authorization = 'Bearer ' +myToken
    Given path '/playlists/' +playlistId+ '/tracks'
    * def rBody = {uris:[#(URI)]}
    And request rBody
    When method POST





      





    

