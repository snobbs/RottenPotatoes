Feature: User can manually add movie

Scenario: Add a movie
	Given I am on the Create New Movie page
	And I fill the "Title" with "New Movie"
	And I select "R" from "Rating"
	And I press "Save Changes"
	Then I should be on the RottenPotatoes home page
	And I should see "New Movie"