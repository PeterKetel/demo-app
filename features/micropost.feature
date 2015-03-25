Feature: view micropost

  Scenario: view all microposts
    Given that there no microposts
    When I visit the micropost page
    Then a page is shown with the message "There are no microposts"
