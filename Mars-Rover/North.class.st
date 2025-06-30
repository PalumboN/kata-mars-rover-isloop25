Class {
	#name : 'North',
	#superclass : 'Direction',
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'as yet unclassified' }
North >> moveForward: aPoint [ 
	
	^ aPoint + (0@1).
]

{ #category : 'as yet unclassified' }
North >> turnLeft [ 

	^ West new
]

{ #category : 'as yet unclassified' }
North >> turnRight [ 

	^ East new
]
