Class {
	#name : #BaselineOfFont,
	#superclass : #BaselineOf,
	#category : #BaselineOfFont
}

{ #category : #baseline }
BaselineOfFont >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'Font'
		]
]
