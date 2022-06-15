Feature: Spotify Website Test
  Background:
    * configure driver = { type: 'chromedriver', executable: 'src/test/resources/chromedriver.exe' }
    Scenario: Successful login and create playlist
      Given driver 'https://open.spotify.com/'
      * maximize()
      When click("//button[@data-testid='login-button']")
      And input('#login-username','yonca.kanmaz@testinium.com')
      And input('#login-password','1q2w3e4r5Test')
      And click('#login-button')
      Then click("//button[@data-testid='create-playlist-button']")
      And click("//span[@class='o4KVKZmeHsoRZ2Ltl078']")
      And waitFor("//input[@class='f0GjZQZc4c_bKpqdyKbq JaGLdeBa2UaUMBT44vqI']")
      And input("//input[@data-testid='playlist-edit-details-name-input']",'MentorLabs Challenge')
      And click('.ButtonInner-sc-14ud5tc-0.iebPZv.encore-inverted-light-set')
      And input('.Type__TypeElement-goli3j-0.ebHsEf.l42JW4EP_5CU1Ba7jYIc','Daft Punk')
      And click("//button[@data-testid='add-to-playlist-button']")
      And waitFor("//div[contains(text(),'Çalma Listesine eklendi')]")




