Class {
	#name : 'DarkerDawnSvgRasterizer',
	#superclass : 'Object',
	#instVars : [
		'inkscapePath',
		'logFile'
	],
	#category : 'DarkerDawnTheme-Tools-Generation',
	#package : 'DarkerDawnTheme-Tools',
	#tag : 'Generation'
}

{ #category : 'converting' }
DarkerDawnSvgRasterizer >> convert: anIconName size: aSize from: aSource to: aDestination [ 

	| logFileReference targetPNGReference sourceSVGReference arguments |
	logFileReference := self logFile fullName.
	targetPNGReference := aDestination / (anIconName , '.png').
	targetPNGReference exists ifTrue: [ ^ self ].
	aDestination ensureCreateDirectory.
	
	sourceSVGReference := aSource / (anIconName , '.svg').
	sourceSVGReference exists ifFalse: [ FileDoesNotExistException signalWith: sourceSVGReference. ^ self ].
	arguments := { 
		targetPNGReference fullName. 
		aSize x rounded asString. 
		aSize y rounded asString.
		sourceSVGReference fullName. 
		logFileReference 
	}.
	(self runInkscapeWith: arguments) = 0 & targetPNGReference exists ifFalse: [ Error signal: 'Could not generate PNG file' ].

]

{ #category : 'accessing' }
DarkerDawnSvgRasterizer >> inkscapePath [

	^ inkscapePath ifNil: [ inkscapePath := (LibC resultOfCommand: 'which inkscape') trimmed ]
]

{ #category : 'accessing' }
DarkerDawnSvgRasterizer >> inkscapePath: anObject [

	inkscapePath := anObject
]

{ #category : 'accessing' }
DarkerDawnSvgRasterizer >> logFile [

	^ logFile ifNil: [ logFile := FileLocator imageDirectory / 'inkscape.log' ]
]

{ #category : 'accessing' }
DarkerDawnSvgRasterizer >> logFile: anObject [

	logFile := anObject
]

{ #category : 'private - running' }
DarkerDawnSvgRasterizer >> runInkscapeWith: aCollection [

	| inkscape arguments shellCommand|
	inkscape := self inkscapePath asFileReference fullName.
	arguments := { inkscape }, aCollection.
	shellCommand := 'unset LD_LIBRARY_PATH && (set -x && {1} --export-filename {2} -w {3} -h {4} {5}) 1>>{6} 2>&1' 
		format: (arguments collect: [ :argument |
									'''{1}''' format: { argument copyReplaceAll: '''' with: '''\''''' } ]).
	^ LibC system: shellCommand

]
