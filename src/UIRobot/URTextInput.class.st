Class {
	#name : #URTextInput,
	#superclass : #URElement,
	#category : #UIRobot
}

{ #category : #testing }
URTextInput class >> expectedTypes [
	^ { PluggableTextFieldMorph }
]

{ #category : #accessing }
URTextInput >> text [
	^ morph text
]
