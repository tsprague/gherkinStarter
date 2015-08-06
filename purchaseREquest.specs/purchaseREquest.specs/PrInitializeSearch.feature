@https://trello.com/c/X4eAz2jP
Feature: InitializeSearch
	As a request creator
	I want to be able to source resources based on the device classification
	So that I can see parts and purchased service for the same model as that I am servicing
	NOTE: In some manner, the device classification ID or mfg, model, and device strings must be passed to the search

Scenario: Device Class ID = 35621
	Given this is a new search
	When the page is loaded
	Then the manufacturer reads "Medtronic Physio Control"
		And the model reads "LifePak 12"
		And the device reads "Defibrillator/Pacemakers, External"
		And all three fields can be edited by the request creator
		And all three fields are selected to be used in the filter
		And all three fields can be deselected individually (in which case they are not used in the filter)
		And the rest of the filter text fields are empty 
		And the warehouse selector is set to no selection


	
