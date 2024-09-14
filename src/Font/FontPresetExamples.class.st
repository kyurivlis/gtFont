Class {
	#name : #FontPresetExamples,
	#superclass : #Object,
	#category : #Font
}

{ #category : #'as yet unclassified' }
FontPresetExamples >> defaultPresetMatchesDeclaration [
	<gtExample>
	|messages setters|
	messages:= (FontPreset methodNamed: #defaultPreset) ast  // RBMessageNode.
	setters:= FontPreset methodsInProtocol: 'set'.
	^self assert: (messages size = setters size)
]
