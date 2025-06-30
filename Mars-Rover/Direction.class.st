Class {
	#name : 'Direction',
	#superclass : 'Object',
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'as yet unclassified' }
Direction >> moveForward: aPoint [ 
	
	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
Direction >> turnLeft [ 

	^ self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
Direction >> turnRight [ 

	^ self subclassResponsibility 
]
