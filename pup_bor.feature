@smoke
Feature: View Board of Regents of PUP System


  Scenario Outline: Board of Regents - <name>
    * configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name        | btn1             | btn2                       | expected                                      |
      | About PUP   | {a}About PUP     | {a}Board of Regents        | https://www.pup.edu.ph/about/board            |