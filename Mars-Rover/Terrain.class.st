Class {
	#name : 'Terrain',
	#superclass : 'Object',
	#instVars : [
		'width',
		'height'
	],
	#classInstVars : [
		'dimensions'
	],
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'parsing' }
Terrain class >> parse: aStringDimension [

	| pair |
	pair := (' ' split: aStringDimension) collect: [ :str | str asNumber ].
	^ self width: pair first height: pair second
]

{ #category : 'as yet unclassified' }
Terrain class >> simulate: aString [

	| lines instance stream |
	stream := WriteStream on: String new.
	
	lines := self splitCommands: aString.
	instance := self parse: lines first.
	lines allButFirst pairsDo: [ :position :movements |
			| rover |
			rover := instance parseRoverPosition: position.
			instance parseRoverMovements: movements startingPosition: rover.
			stream nextPutAll: rover asStringResult.
			stream cr.
			stream cr ].
	^ stream contents
]

{ #category : 'as yet unclassified' }
Terrain class >> splitCommands: input [ 

	^ (String cr split: input) reject: #isEmpty 
]

{ #category : 'instance creation' }
Terrain class >> width: width height: height [

	^ self new
		  width: width;
		  height: height;
		  yourself
]

{ #category : 'accessing' }
Terrain >> height [
	^ height
]

{ #category : 'accessing' }
Terrain >> height: anInteger [ 
	height := anInteger
]

{ #category : 'accessing' }
Terrain >> parseRoverMovements: aString startingPosition: aRover [ 

	aString asOrderedCollection do: [:p | aRover updateWith: p ].
	^ aRover
	
]

{ #category : 'accessing' }
Terrain >> parseRoverPosition: aString [ 
	
	| tokens |
	tokens := aString splitOn: Character space.
	
	^ Rover
		coordinates: (tokens first asNumber @ tokens second asNumber)
		direction: (Rover directionFrom: tokens third)
]

{ #category : 'accessing' }
Terrain >> width [
	^ width
]

{ #category : 'accessing' }
Terrain >> width: anInteger [ 
	width := anInteger
]
