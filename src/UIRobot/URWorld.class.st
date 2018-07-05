Class {
	#name : #URWorld,
	#superclass : #URElement,
	#category : #UIRobot
}

{ #category : #windows }
URWorld >> findWindow: aBlockClosure [ 
	
	^ self find: URWindow from: World matching: aBlockClosure.
]

{ #category : #windows }
URWorld >> findWindowByTitle: aString [ 

	^ self findWindow: [ :aWin | aWin label = aString ]
]
