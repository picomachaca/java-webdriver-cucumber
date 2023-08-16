#Author: Eduardo Gutierrez

  @Webdriver
  Feature: Practice with selenium WebDriver

    @Webdriver.1
      Scenario: open webpage and explore the property of it
          #Given I open url "https://www.google.com/"
      Given EG go to url "Ask"
      Then EG get page information
      Then EG maximize the window
      Then I wait for 5 sec