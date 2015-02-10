Then(/^I should see "(.*?)"$/) do |link|
  page.should have_content(link)
end

Then(/^I should not see "(.*?)"$/) do |link|
  page.should_not have_content(link)
end
