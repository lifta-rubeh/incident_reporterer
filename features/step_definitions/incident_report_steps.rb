Given /^the following incident_reports:$/ do |incident_reports|
  IncidentReport.create!(incident_reports.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) incident_report$/ do |pos|
  visit incident_reports_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following incident_reports:$/ do |expected_incident_reports_table|
  expected_incident_reports_table.diff!(tableish('table tr', 'td,th'))
end
