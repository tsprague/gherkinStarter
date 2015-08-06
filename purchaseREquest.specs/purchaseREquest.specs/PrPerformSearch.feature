@https://trello.com/c/X4eAz2jP
@https://trello.com/c/mx05NDCi
@https://trello.com/c/yUxM47Gh
Feature: PrPerformSearch
	As a request creator
	I want to search / source parts and purchased service
	So that the results match my filter criteria

Scenario: Filter including device class manufacturer
	Given the device class manufacturer is selected to be used in the filter
		And the manufacturer string is not empty
	When I press search
	Then All the results that are returned contain the manufacturer search criteria in the manufacturer textbox (wildcard search)

Scenario: Filter including device class model
	Given the device class model is selected to be used in the filter
		And the model string is not empty
	When I press search
	Then All the results that are returned contain the model search criteria in the model textbox (wildcard search)

Scenario: Filter including device class device
	Given the device class device is selected to be used in the filter 
		And the device string is not empty
	When I press search
	Then All the results that are returned contain the device search criteria in the device textbox (wildcard search)

Scenario: Filter including vendor part #
	Given the part # (aka vendor part #) string is not empty
	When I press search
	Then All the results that are returned contain the vendodr part # criteria in the part # textbox (wildcard search)

Scenario: Filter including manufacturer part #
	Given the Mfg part # string is not empty
	When I press search
	Then all the results that are returned contain the Mfg Part # criteria in the Mfg part # textbox (wildcard search)

Scenario: Filter including vendor
	Given the vendor string is not empty
	When I press search
	Then all the results that are returned contain the vendor criteria in the vendor textbox (wildcard search)

Scenario: Filter including resource description 
	Given the description (aka resource description)
	When I press search 
	Then all the results that are returned contain the resource description criteria in the description (wildcard search) 

Scenario: Filter including warehouse 
	Given there is a warehouse selection
	When I press search
	Then all the results that are returned are those found in the selected warehouse