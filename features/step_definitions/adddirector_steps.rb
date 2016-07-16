
When(/^I go to the edit page for "([^"]*)"$/) do |movietitle|
    visit edit_movie_path(Movie.find_by_title(movietitle).id)
  #pending
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
    fill_in(field, :with => value)
end

Then(/^the director of "([^"]*)" should be "([^"]*)"$/) do |movietitle, director|
    Movie.find_by_title(movietitle).director.should == director
end