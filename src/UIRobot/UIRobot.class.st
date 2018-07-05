Class {
	#name : #UIRobot,
	#superclass : #Object,
	#instVars : [
		'world'
	],
	#category : #UIRobot
}

{ #category : #initialization }
UIRobot >> initialize [
	super initialize.
	world := URWorld on: World.
]

{ #category : #accessing }
UIRobot >> world [
	^ world
]
