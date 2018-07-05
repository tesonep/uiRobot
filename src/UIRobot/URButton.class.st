Class {
	#name : #URButton,
	#superclass : #URElement,
	#category : #UIRobot
}

{ #category : #testing }
URButton class >> expectedTypes [
	^ { PluggableButtonMorph }
]

{ #category : #accessing }
URButton >> label [
	^ morph label
]
