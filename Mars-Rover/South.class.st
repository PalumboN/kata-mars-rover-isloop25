Class {
	#name : 'South',
	#superclass : 'Direction',
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'as yet unclassified' }
South >> moveForward: aPoint [ 
	
	^ aPoint - (0@1).
]

{ #category : 'as yet unclassified' }
South >> turnLeft [ 

	^ East new
]

{ #category : 'as yet unclassified' }
South >> turnRight [

	^ West new
]
