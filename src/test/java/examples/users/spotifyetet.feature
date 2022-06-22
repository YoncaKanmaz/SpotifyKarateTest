Feature: Spotify End To End Testing
  Background:
    * configure driver = { type: 'chromedriver', executable: 'src/test/resources/chromedriver.exe' }
    Scenario: Successful login and create playlist
      Given driver 'https://open.spotify.com/'
      * maximize()
      When click("//button[@data-testid='login-button']")
      And input('#login-username','yonca.kanmaz@testinium.com')
      And input('#login-password','1q2w3e4r5Test')
      And click('#login-button')
      Then waitFor("//span[text()='Ara']").click()
      * delay(10000)
      * script("//h3[text()='TV ve Filmler']", '_.scrollIntoView()')
      * delay(10000)
      And click("//h3[text()='TV ve Filmler']")
      And click("//a[@title='Minions Official Playlist']")
      And click("//button[@aria-label='Minions Official Playlist için diğer seçenekler']")
      And click("//span[text()='Kitaplığına Ekle']")
      And waitFor("//div[contains(text(),'Kitaplığına kaydedildi')]")
      And click("//button[@aria-label='Minions Official Playlist için diğer seçenekler']")
      And click("//span[text()='Kitaplığından kaldır']")
      And waitFor("//div[contains(text(),'Kitaplığından çıkarıldı')]")
      And click("//button[@data-testid='user-widget-link']")
      * delay(5000)
      And click("//span[text()='Oturumu kapat']")
      And waitFor("//div[contains(text(),'Oturum aç')]")
      * delay(5000)












