Class {
	#name : #URElement,
	#superclass : #Object,
	#instVars : [
		'morph'
	],
	#category : #UIRobot
}

{ #category : #testing }
URElement class >> isExpectedType: aMorph [ 
	
	^ self expectedTypes anySatisfy: [ :aType | aMorph isKindOf: aType ].

]

{ #category : #'instance creation' }
URElement class >> notFound [
	^ self new
]

{ #category : #'instance-creation' }
URElement class >> on: aMorph [
 
	^ self basicNew
		morph: aMorph;
		initialize;
		yourself.
]

{ #category : #finding }
URElement >> find: aURClass from: aMorph matching: aBlockClosure [ 
	
	| morphs |
	morphs := aMorph allMorphs select: [ :each | (aURClass isExpectedType: each) and: [ aBlockClosure cull: each ] ].
	morphs size > 1 ifTrue: [ self error: 'More than a morph of ' , aURClass name , ' found in ', aMorph printString ].
	
	morphs size = 0 ifTrue: [ ^ aURClass notFound ].
	
	^ aURClass on: morphs anyOne.
]

{ #category : #buttons }
URElement >> findButtonWithLabel: aLabel [
	
	^ self find: URButton from: self morph matching: [ :aBtn | aBtn label = aLabel ]
]

{ #category : #textinput }
URElement >> findTextInput [
	^ self find: URTextInput from: self morph matching: [ :aTextInput | true ].
]

{ #category : #testing }
URElement >> isFound [
	^ morph ~= nil
]

{ #category : #accessing }
URElement >> morph [
	^ morph
]

{ #category : #accessing }
URElement >> morph: aMorph [ 
	morph := aMorph
]
