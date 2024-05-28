@regression_tests

Feature: Navigate to the Kayak home

  Scenario: Navigate to the Kayak home page and validate principal elements
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    And The page "should" contain the next elements
      | name          | type   |
      | flight_option | a      |
      | city_search   | input  |
      | search_tag    | div    |
      | signin        | button |

  Scenario: Validate URL of Home page
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    And The url page should be equal to the next "https://www.kayak.com.co/" url


  Scenario Outline: Navigate between countries and validate the URL
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    When I navigate to the "<url>" URL
    Then The url page should be equal to the next "<url>" url

    Examples:
      | url                       |
      | https://www.kayak.com.my/ |
      | https://www.kayak.com.pr/ |
      | https://www.kayak.com.br/ |

  Scenario Outline: Navigate the page
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    When I click on the that "<name>" "<type>"
    Then I should be in the "<validation>" "<type validation>"
    Examples:
      | name         | type   | validation      | type validation |
      | signin       | button | signin_validate | div             |
      | car_option   | a      | car             | a               |
      | search_click | div    | validate_search | div             |


  Scenario Outline: Navigate to different menu options and validate objects
    Given I navigate to the kayak main page
    Then I should be in the "home" page
    When I click on the that "<name>" "<type>"
    Then I should be in the "<validation>" "<type validation>"

    Examples:
      | name                 | type | validation    | type validation |
      | flight_option        | a    | flights       | h2              |
      | accommodation_option | div  | accommodation | h2              |
      | car_option           | a    | car           | a               |
      | packages_option      | a    | packages      | h1              |
      | explorer_option      | a    | explorer      | div             |
      | blog_option          | a    | blog          | a               |
      | flight_direct_option | div  | flight_direct | h2              |
      | best_moment_option   | div  | best_moment   | h1              |
      | business_option      | div  | business      | button          |
      | trips_option         | a    | trips         | h1              |
      | language_option      | div  | language      | span            |






