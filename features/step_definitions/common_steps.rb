Then(/^I should see "(.*?)"$/) do |link|
  page.should have_content(link)
end

Then(/^I should not see "(.*?)"$/) do |link|
  page.should_not have_content(link)
end


When(/^I go to (.*?)$/) do |page_name|
  # visit articles_path
  visit path_to(page_name)
end

Then(/^I should see (.+) table$/) do |table_id, expected_table|
  html_table = table_at("##{table_id.parameterize.tableize}").to_a
  html_table.map! { |r| r.map! { |c| c.gsub(/<.+?>/, '').gsub(/[\n\t\r]/, '') } }
  expected_table.diff!(html_table)
end
