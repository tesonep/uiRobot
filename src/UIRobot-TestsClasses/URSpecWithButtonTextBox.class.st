Class {
	#name : #URSpecWithButtonTextBox,
	#superclass : #ComposablePresenter,
	#instVars : [
		'button',
		'textBox'
	],
	#category : #'UIRobot-TestsClasses'
}

{ #category : #specs }
URSpecWithButtonTextBox class >> defaultSpec [
	<spec: #default>
	
	^ SpecLayout composed
		newColumn: [ :c | 
			c 
				add: #textBox;
				add: #button	 height: self buttonHeight ];
		yourself
]

{ #category : #accessing }
URSpecWithButtonTextBox >> button [
	^ button
]

{ #category : #accessing }
URSpecWithButtonTextBox >> button: anObject [
	button := anObject
]

{ #category : #initialization }
URSpecWithButtonTextBox >> initializeWidgets [	
	textBox := self newTextInput.
	button := self newButton.
]

{ #category : #accessing }
URSpecWithButtonTextBox >> textBox [
	^ textBox
]

{ #category : #accessing }
URSpecWithButtonTextBox >> textBox: anObject [
	textBox := anObject
]
