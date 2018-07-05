Class {
	#name : #URWindowTest,
	#superclass : #URAbstractTest,
	#category : #'UIRobot-Tests'
}

{ #category : #tests }
URWindowTest >> tearDown [

	super tearDown
]

{ #category : #tests }
URWindowTest >> testFindButtonInWindow [

	| win button |
	self openButtonWindowTitled: 'A Test Window'.
	
	win := robot world findWindowByTitle: 'A Test Window'.
	button := win findButtonWithLabel: 'I am a Button'.
	
	self assert: button isFound.
	self assert: button label equals: 'I am a Button'.
]

{ #category : #tests }
URWindowTest >> testFindTextboxInWindow [

	| win textbox |
	self openButtonWindowTitled: 'A Test Window'.
	
	win := robot world findWindowByTitle: 'A Test Window'.
	textbox := win findTextInput.
		
	self assert: textbox isFound.
	self assert: textbox text equals: ''.
]

{ #category : #tests }
URWindowTest >> testFindWindowByTitle [
	| urWindow win|
	
	win := self openButtonWindowTitled: 'A Test Window'.
		
	urWindow := robot world findWindowByTitle: 'A Test Window'.
	
	self assert: urWindow isFound.

]

{ #category : #tests }
URWindowTest >> testFindWindowByTitleFailsBecauseThereTwo [
	
	| win1 win2 |
	win1 := self openButtonWindowTitled: 'A Test Window'.
	win2 := self openButtonWindowTitled: 'A Test Window'.
		
	self should: [robot world findWindowByTitle: 'A Test Window'] raise: Error.
	
]

{ #category : #tests }
URWindowTest >> testFindWindowByTitleNotFound [
	| urWindow |
	
	urWindow := robot world findWindowByTitle: 'A Test Window'.
	
	self assert: urWindow isFound not.

]
