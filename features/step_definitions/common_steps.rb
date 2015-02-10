Then(/^I should see "(.*?)"$/) do |link|
  page.should have_content(link)
end

Then(/^I should not see "(.*?)"$/) do |link|
  page.should_not have_content(link)
end


When(/^I go to "(.*?)"$/) do |page_name|
  # visit articles_path
  visit path_to(page_name)
end
