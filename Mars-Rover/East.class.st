Class {
	#name : 'East',
	#superclass : 'Direction',
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'as yet unclassified' }
East >> moveForward: aPoint [ 
	
	^ aPoint + (1@0).
]

{ #category : 'as yet unclassified' }
East >> turnLeft [ 

	^ North new
]

{ #category : 'as yet unclassified' }
East >> turnRight [
	
	^ South new
]
