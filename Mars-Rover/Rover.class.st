Class {
	#name : 'Rover',
	#superclass : 'Object',
	#instVars : [
		'coordinates',
		'direction'
	],
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'converting' }
Rover >> asStringResult [
	^  coordinates x asString, String space, coordinates y asString, String space, direction class name first asString
]

{ #category : 'instance creation' }
Rover >> coordinates [
	^ coordinates
]

{ #category : 'instance creation' }
Rover >> coordinates: aPoint [ 
	
	coordinates := aPoint
]

{ #category : 'instance creation' }
Rover >> direction [
	^ direction
]

{ #category : 'instance creation' }
Rover >> direction: aString [ 
	
	direction := aString
]

{ #category : 'as yet unclassified' }
Rover >> turnLeft [
	direction := direction turnLeft.
]

{ #category : 'as yet unclassified' }
Rover >> turnRight [
	direction := direction turnRight.
]

{ #category : 'instance creation' }
Rover >> updateWith: aCharacter [

	aCharacter = $M ifTrue: [
		coordinates := direction moveForward: coordinates ].
	aCharacter = $R ifTrue: [ self turnRight ].
	aCharacter = $L ifTrue: [ self turnLeft ]
]
