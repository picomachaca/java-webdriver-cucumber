@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    @Gibiru
    Scenario: Search engine for https://gibiru.com/
      Given I open url "https://gibiru.com/"
      Then I should see page title contains "Gibiru"
      Then element with xpath "//input[@id='q']" should be present
      When I type "Doritos Flamin Hot" into element with xpath "//input[@id='q']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then I wait for element with xpath "//div[@id='web-results']" to be present
      Then element with xpath "//div[@id='web-results']" should contain text "Doritos Flamin Hot"

      @DuckDuckGo
      Scenario: Search engine for https://duckduckgo.com/
        Given I open url "https://duckduckgo.com/"
        Then I should see page title contains "DuckDuckGo"
        Then element with xpath "//input[@id='search_form_input_homepage']" should be present
        When I type "Portnov Computer School" into element with xpath "//input[@id='search_form_input_homepage']"
        Then I click on element using JavaScript with xpath "//input[@id='search_button_homepage']"
        Then I wait for element with xpath "//div[@id='react-layout']" to be present
        Then I wait for element with xpath "//span[contains(text(),'Home - Portnov Computer School')]" to be present
        Then I click on element using JavaScript with xpath "//span[contains(text(),'Home - Portnov Computer School')]"
        Then I wait for element with xpath "//a[contains(text(),'Portnov Computer School')]" to be present

        @Swisscows
        Scenario: Search engine for https://swisscows.com/ (in spanish)
          Given I open url "https://swisscows.com/"
          Then I should see page title contains "Swisscows"
          Then element with xpath "//div[@class='logo-home']" should be present
          Then element with xpath "//input[@class='input-search']" should be present
          When I type "Why should I use Swisscows" into element with xpath "//input[@class='input-search']"
          Then I click on element using JavaScript with xpath "//button[@class='search-submit']"
          Then I wait for element with xpath "//div[@class='web-results']" to be present
          Then element with xpath "//div[@class='web-results']" should contain text "Swisscows"
          Then I click on element using JavaScript with xpath "//h2[contains(text(),'Your private and anonymous search engine Swisscows')]"

          @Searchencrypt
          Scenario: Search engine for https://www.searchencrypt.com/home
            Given I open url "https://www.searchencrypt.com/home"
            Then I should see page title contains "Search Encrypt | Home"
            Then element with xpath "//input[@class='search-bar__search']" should be present
            When I type "Facebook" into element with xpath "//input[@class='search-bar__search']"
            Then I click on element using JavaScript with xpath "//button[@class='search-bar__submit']"
            Then I wait for element with xpath "//nav[@class='serp-nav container']" to be present
            Then I click on element using JavaScript with xpath "//a[@class='search-link link serp-nav__item-link']"
            Then I wait for element with xpath "//div[@class='image-gallery__entries']" to be present
            Then I click