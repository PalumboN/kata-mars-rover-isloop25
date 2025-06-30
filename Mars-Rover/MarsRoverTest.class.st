Class {
	#name : 'MarsRoverTest',
	#superclass : 'TestCase',
	#category : 'Mars-Rover',
	#package : 'Mars-Rover'
}

{ #category : 'tests' }
MarsRoverTest >> testBigOne [

	| input myTerrain  rover roverStartingPosition updatedPosition |
	input := 'LMLMLMLMM'.
	roverStartingPosition := '1 2 N'.
	myTerrain := Terrain width: 5 height: 5.
	rover := myTerrain parseRoverPosition: roverStartingPosition.	
		
	updatedPosition := myTerrain parseRoverMovements: input startingPosition: rover.
	
	self assert: updatedPosition coordinates equals: 1@3.
	self assert: updatedPosition direction class equals: North.
]

{ #category : 'tests' }
MarsRoverTest >> testBigOneSecondCase [

	| input myTerrain  rover roverStartingPosition updatedPosition |
	input := 'MMRMMRMRRM'.
	roverStartingPosition := '3 3 E'.
	myTerrain := Terrain width: 5 height: 5.
	rover := myTerrain parseRoverPosition: roverStartingPosition.	
		
	updatedPosition := myTerrain parseRoverMovements: input startingPosition: rover.
	
	self assert: updatedPosition coordinates equals: 5@1.
	self assert: updatedPosition direction class equals: East .
]

{ #category : 'tests' }
MarsRoverTest >> testEastMoveForward [

	| direction newPos |
	
	direction := East new.
	newPos := direction moveForward: 1@2.
	self assert: newPos equals: 2@2.
	
]

{ #category : 'tests' }
MarsRoverTest >> testEastTurnLeftGivesNorth [

	| direction newDirection |
	
	direction := East new.
	newDirection := direction turnLeft.
	self assert: newDirection class equals: North.
	
]

{ #category : 'tests' }
MarsRoverTest >> testEastTurnRightGivesNorth [

	| direction newDirection |
	
	direction := East new.
	newDirection := direction turnRight.
	self assert: newDirection class equals: South.
	
]

{ #category : 'tests' }
MarsRoverTest >> testNorthMoveForward [

	| direction newPos |
	
	direction := North new.
	newPos := direction moveForward: 1@2.
	self assert: newPos equals: 1@3.
	
]

{ #category : 'tests' }
MarsRoverTest >> testNorthTurnLeftGivesWest [

	| direction newDirection |
	
	direction := North new.
	newDirection := direction turnLeft.
	self assert: newDirection class equals: West.
	
]

{ #category : 'tests' }
MarsRoverTest >> testNorthTurnRightGivesEast [

	| direction newDirection |
	
	direction := North new.
	newDirection := direction turnRight.
	self assert: newDirection class equals: East.
	
]

{ #category : 'tests' }
MarsRoverTest >> testParseFirstLineAsDimesionOfTheTerrain [

	| input myTerrain |
	input := '5 5'.
	myTerrain := Terrain parse: input.
	self assert: myTerrain width equals: 5.
	self assert: myTerrain height equals: 5
]

{ #category : 'tests' }
MarsRoverTest >> testParseInitialRoverPosition [

	| input myTerrain position |
	input := '1 2 N'.
	myTerrain := Terrain width: 5 height: 5.
	position := myTerrain parseRoverPosition: input.
	
	self assert: position coordinates equals: 1@2.
	self assert: position direction class equals: North.
]

{ #category : 'tests' }
MarsRoverTest >> testParseRoverInitialPosition [

	| input myTerrain  rover roverStartingPosition |
	input := 'LMLMLMLMM'.
	roverStartingPosition := '1 2 N'.
	myTerrain := Terrain width: 5 height: 5.
	rover := myTerrain parseRoverPosition: roverStartingPosition.
	
	self assert: rover coordinates equals: (1@2).
]

{ #category : 'tests' }
MarsRoverTest >> testParseRoverMovements [

	| input myTerrain  rover roverStartingPosition updatedPosition |
	input := 'LM'.
	roverStartingPosition := '1 2 N'.
	myTerrain := Terrain width: 5 height: 5.
	rover := myTerrain parseRoverPosition: roverStartingPosition.	
		
	updatedPosition := myTerrain parseRoverMovements: input startingPosition: rover.
	
	self assert: updatedPosition coordinates equals: 0@2.
	self assert: updatedPosition direction class equals: West
]

{ #category : 'tests' }
MarsRoverTest >> testSouthMoveForward [

	| direction newPos |
	
	direction := South new.
	newPos := direction moveForward: 1@2.
	self assert: newPos equals: 1@1.
	
]

{ #category : 'tests' }
MarsRoverTest >> testSouthTurnLeftGivesEast [

	| direction newDirection |
	
	direction := South new.
	newDirection := direction turnLeft.
	self assert: newDirection class equals: East.
	
]

{ #category : 'tests' }
MarsRoverTest >> testSouthTurnRightGivesWest [

	| direction newDirection |
	
	direction := South new.
	newDirection := direction turnRight.
	self assert: newDirection class equals: West.
	
]

{ #category : 'tests' }
MarsRoverTest >> testSplitingAllTheInputLines [

	| input expected |
	input := '5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM'.
	expected := { '5 5'. '1 2 N'. 'LMLMLMLMM'. '3 3 E'. 'MMRMMRMRRM' }.
	
	self assertCollection: (Terrain splitCommands: input) hasSameElements: expected.
]

{ #category : 'tests' }
MarsRoverTest >> testTerrainCreation [

	| myTerrain |
	myTerrain := Terrain width: 5 height: 5.
	self assert: myTerrain width equals: 5.
	self assert: myTerrain height equals: 5
]

{ #category : 'tests' }
MarsRoverTest >> testTheBiggestOne [

	| input expected |
	input := '5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM'.
	expected := '1 3 N

5 1 E

'.
	self assert: (Terrain simulate: input) equals: expected.
"	self assert: updatedPosition direction class equals: East ."
]

{ #category : 'tests' }
MarsRoverTest >> testWestMoveForward [

	| direction newPos |
	
	direction := West new.
	newPos := direction moveForward: 1@2.
	self assert: newPos equals: 0@2.
	
]

{ #category : 'tests' }
MarsRoverTest >> testWestTurnLeftGivesSouth [

	| direction newDirection |
	
	direction := West new.
	newDirection := direction turnLeft.
	self assert: newDirection class equals: South.
	
]

{ #category : 'tests' }
MarsRoverTest >> testWestTurnRightGivesNorth [

	| direction newDirection |
	
	direction := West new.
	newDirection := direction turnRight.
	self assert: newDirection class equals: North.
	
]
