Given(/^I am on the Create New Movie page$/) do
    visit "/movies/new"
end

Given(/^I fill the "([^"]*)" with "([^"]*)"$/) do |title, movietitle|
    fill_in(title, :with => movietitle)
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |movierating, rating|
    select(movierating, :from => rating)
end

Given(/^I press "([^"]*)"$/) do |button|
    click_button(button)
end

Then(/^I should be on the RottenPotatoes home page$/) do
    visit "/"
end

Then(/^I should see "([^"]*)"$/) do |name|
    page.should have_content(name)
end