Class {
	#name : 'West',
	#superclass : 'Direction',
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'as yet unclassified' }
West >> moveForward: aPoint [ 
	
	^ aPoint - (1@0).
]

{ #category : 'as yet unclassified' }
West >> turnLeft [ 

	^ South new
]

{ #category : 'as yet unclassified' }
West >> turnRight [ 

	^ North new
]
