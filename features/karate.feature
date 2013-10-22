Feature: Traditional Karate

Scenario Outline: Where is the Master?
	Given I navigate to Google
	When I enter into the search field "<Pass>"
	Then the text abc should be present
	When I enter <andy> into the search field
	#And enter xyz in search field
	#And I click on the video
	#And I enter comment
	And I click thumbs up
Examples: 
|Pass|
|AnnBraud1021|
