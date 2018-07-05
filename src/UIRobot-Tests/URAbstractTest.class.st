Class {
	#name : #URAbstractTest,
	#superclass : #TestCase,
	#instVars : [
		'robot',
		'windows'
	],
	#category : #'UIRobot-Tests'
}

{ #category : #utils }
URAbstractTest >> openButtonWindowTitled: aString [ 

	^ self openWindowTitled: aString withButton: 'I am a Button'.
	
]

{ #category : #'as yet unclassified' }
URAbstractTest >> openWindowTitled: title withButton: buttonText [
	| win |
	win := URSpecWithButtonTextBox new.
	win title: title.
	win button label: buttonText.
	win openWithSpec.
	
	windows add: win.
	^ win
]

{ #category : #running }
URAbstractTest >> setUp [
	super setUp.
	robot := UIRobot new.
	windows := OrderedCollection new
]

{ #category : #running }
URAbstractTest >> tearDown [
	windows do: #delete.
	windows removeAll.
	
	super tearDown.
]
