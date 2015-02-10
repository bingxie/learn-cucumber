Given(/^I have articles titled (.+)$/) do |titles|
  titles.split(', ').each do |title|
    Article.create!(:title => title)
  end
end

When(/^I go to "(.*?)"$/) do |page_name|
  # visit articles_path
  visit path_to(page_name)
end

Given(/^I have no articles$/) do
  Article.delete_all
end

Given(/^I am on "(.*?)"$/) do |page_name|
  visit path_to(page_name)
end

When(/^I follow "(.*?)"$/) do |arg1|
  click_link arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, :with => arg2
end

When(/^I press "(.*?)"$/) do |arg1|
  click_button arg1
end

Then(/^I should have (\d+) article$/) do |arg1|
  Article.count.should == arg1.to_i
end
