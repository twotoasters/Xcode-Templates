Feature: Test
  In order be able to test shit
  I want to be able to write cucumber stories
  
  Scenario: Title Bar
    Given the app is relaunched
    Then the title bar should read "Google"
  
  Scenario: Hitting Reload
    # You totally don't want to do this every time, its just an example
    Given the app is relaunched
    When I hit the reload button
    # NOTE that this won't actually work unless your internet is going really slow...
    # the point is that it _would_ work.
    Then the title bar should read "Loading..." 