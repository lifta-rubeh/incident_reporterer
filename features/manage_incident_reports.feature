Feature: Manage incident_reports
  In order to let people report inappropriate behavior
  As an HR Manager
  I want to manage incidents in a central tool
  
  Scenario: Register new incident_report
    Given I am on the new incident_report page
    When I fill in "Name" with "name 1"
    And I fill in "Phone" with "phone 1"
    And I fill in "Incident occurred at" with "1-1-2011"
    And I fill in "Incident location" with "incident_location 1"
    And I fill in "Incident description" with "incident_description 1"
    And I fill in "Incident location description" with "incident_location_description 1"
    And I uncheck "Other party is tns employee"
    And I press "Create"
    Then I should see "name 1"
    And I should see "phone 1"
    And I should see "1-1-2011"
    And I should see "incident_location 1"
    And I should see "incident_description 1"
    And I should see "incident_location_description 1"
    And I should see "false"

  # Rails generates Delete links that use Javascript to pop up a confirmation
  # dialog and then do a HTTP POST request (emulated DELETE request).
  #
  # Capybara must use Culerity/Celerity or Selenium2 (webdriver) when pages rely
  # on Javascript events. Only Culerity/Celerity supports clicking on confirmation
  # dialogs.
  #
  # Since Culerity/Celerity and Selenium2 has some overhead, Cucumber-Rails will
  # detect the presence of Javascript behind Delete links and issue a DELETE request 
  # instead of a GET request.
  #
  # You can turn this emulation off by tagging your scenario with @no-js-emulation.
  # Turning on browser testing with @selenium, @culerity, @celerity or @javascript
  # will also turn off the emulation. (See the Capybara documentation for 
  # details about those tags). If any of the browser tags are present, Cucumber-Rails
  # will also turn off transactions and clean the database with DatabaseCleaner 
  # after the scenario has finished. This is to prevent data from leaking into 
  # the next scenario.
  #
  # Another way to avoid Cucumber-Rails' javascript emulation without using any
  # of the tags above is to modify your views to use <button> instead. You can
  # see how in http://github.com/jnicklas/capybara/issues#issue/12
  #
  Scenario: Delete incident_report
    Given the following incident_reports:
      |name|phone|incident_occurred_at|incident_location|incident_description|incident_location_description|other_party_is_tns_employee|
      |name 1|phone 1|1-1-2011|incident_location 1|incident_description 1|incident_location_description 1|false|
      |name 2|phone 2|1-1-2011|incident_location 2|incident_description 2|incident_location_description 2|true|
      |name 3|phone 3|1-1-2011|incident_location 3|incident_description 3|incident_location_description 3|false|
      |name 4|phone 4|1-1-2011|incident_location 4|incident_description 4|incident_location_description 4|true|
    When I delete the 3rd incident_report
    Then I should see the following incident_reports:
      |Name|Phone|Incident occurred at|Incident location|Incident description|Incident location description|Other party is tns employee|
      |name 1|phone 1|1-1-2011|incident_location 1|incident_description 1|incident_location_description 1|false|
      |name 2|phone 2|1-1-2011|incident_location 2|incident_description 2|incident_location_description 2|true|
      |name 4|phone 4|1-1-2011|incident_location 4|incident_description 4|incident_location_description 4|true|
