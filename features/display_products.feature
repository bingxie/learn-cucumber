Feature: Display Products
  In order to purchase the right product
  As a customer
  I want to browse products and see detailed information

Scenario: Show product
  Given a product exists with name: "Milk", price: "2.99"
  When I go to the show page for that product
  Then I should see "Milk"
  And I should see "&pound;2.99"


@index
Scenario: List products
  Given the following products exist
    | name   | price |
    | Milk   | 2.99  |
    | Puzzle | 8.99  |
  When I go to the list of products
  # Then I should see "Milk"
  # And I should see "Puzzle"
  Then I should see products table
    | Milk   | $2.99  |
    | Puzzle | $8.99  |
