Class {
	#name : #FontPreset,
	#superclass : #Dictionary,
	#classInstVars : [
		'familyKeys',
		'sizeKeys'
	],
	#category : #Font
}

{ #category : #private }
FontPreset class >> dictKeys: aKeys [
	(Decl target: self) extend: false; dictKeys: aKeys
]

{ #category : #'as yet unclassified' }
FontPreset class >> familyKeys [
	^familyKeys
]

{ #category : #'as yet unclassified' }
FontPreset class >> initialize [
	familyKeys:= #(regularDefault codeDefault regular code) asOrderedCollection.
	sizeKeys:= (familyKeys copy addAll: #(regularSmall codeSmall codeTiny codeMini); yourself) collect: [:k| k, 'Size'].
	self dictKeys: familyKeys.
	self dictKeys: sizeKeys.
]

{ #category : #'as yet unclassified' }
FontPreset class >> sizeKeys [
	^sizeKeys
]

{ #category : #access }
FontPreset >> code [
	^self at: #code
]

{ #category : #set }
FontPreset >> code: aVal [
	^self at: #code put: aVal
]

{ #category : #access }
FontPreset >> codeDefault [
	^self at: #codeDefault
]

{ #category : #set }
FontPreset >> codeDefault: aVal [
	^self at: #codeDefault put: aVal
]

{ #category : #access }
FontPreset >> codeDefaultSize [
	^self at: #codeDefaultSize
]

{ #category : #set }
FontPreset >> codeDefaultSize: aVal [
	^self at: #codeDefaultSize put: aVal
]

{ #category : #access }
FontPreset >> codeMiniSize [
	^self at: #codeMiniSize
]

{ #category : #set }
FontPreset >> codeMiniSize: aVal [
	^self at: #codeMiniSize put: aVal
]

{ #category : #access }
FontPreset >> codeSize [
	^self at: #codeSize
]

{ #category : #set }
FontPreset >> codeSize: aVal [
	^self at: #codeSize put: aVal
]

{ #category : #access }
FontPreset >> codeSmallSize [
	^self at: #codeSmallSize
]

{ #category : #set }
FontPreset >> codeSmallSize: aVal [
	^self at: #codeSmallSize put: aVal
]

{ #category : #access }
FontPreset >> codeTinySize [
	^self at: #codeTinySize
]

{ #category : #set }
FontPreset >> codeTinySize: aVal [
	^self at: #codeTinySize put: aVal
]

{ #category : #'as yet unclassified' }
FontPreset >> defaultPreset [
	self
		code: 'Source Code Pro'; codeSize: 14; codeDefault: (self code);
		codeSmallSize: 12; codeTinySize: 10; codeMiniSize: 8;
		regular: 'Source Sans Pro'; regularSize: 14; regularSmallSize: 12; regularDefault: (self regular)
		
]

{ #category : #access }
FontPreset >> regular [
	^self at: #regular
]

{ #category : #set }
FontPreset >> regular: aVal [
	^self at: #regular put: aVal
]

{ #category : #access }
FontPreset >> regularDefault [
	^self at: #regularDefault
]

{ #category : #set }
FontPreset >> regularDefault: aVal [
	^self at: #regularDefault put: aVal
]

{ #category : #access }
FontPreset >> regularDefaultSize [
	^self at: #regularDefaultSize
]

{ #category : #set }
FontPreset >> regularDefaultSize: aVal [
	^self at: #regularDefaultSize put: aVal
]

{ #category : #access }
FontPreset >> regularSize [
	^self at: #regularSize
]

{ #category : #set }
FontPreset >> regularSize: aVal [
	^self at: #regularSize put: aVal
]

{ #category : #access }
FontPreset >> regularSmallSize [
	^self at: #regularSmallSize
]

{ #category : #set }
FontPreset >> regularSmallSize: aVal [
	^self at: #regularSmallSize put: aVal
]
