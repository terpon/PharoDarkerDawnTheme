"
I edit an SVG file to replace some colors with ones defined in `DarkDawnColorConfigurator`
"
Class {
	#name : 'DarkerDawnSvgColorizer',
	#superclass : 'DarkerDawnColorConfigurator',
	#instVars : [
		'regexes'
	],
	#category : 'DarkerDawnTheme-Tools-Generation',
	#package : 'DarkerDawnTheme-Tools',
	#tag : 'Generation'
}

{ #category : 'accessing - data' }
DarkerDawnSvgColorizer >> colorMappingRegexes [

^ self colorMappings collect: [ :each |
		{ each first asRegexIgnoringCase . '#',(self perform: each second) asHexString asLowercase }
	] 
]

{ #category : 'accessing - data' }
DarkerDawnSvgColorizer >> colorMappings [

^ #(
	"black -> white"
	( '#0[0-9a-f]0[0-9a-f]0[0-9a-f]' borderColor  )
	( '#(6[a-f]67[0-4]67[0-4]|7[0-4]7[0-4]7[0-4])' selectedButtonColor ) 
	( '#(808080|7[a-f]7[a-f]7[a-f])' lightButtonColor  ) 
	( '#(8[789a-f]8[789a-f]8[789a-f]|9[0-9a-f]9[0-9a-f]9[0-9a-f])' buttonColor ) 
	( '#a7a7a7' buttonColor  ) 
	( '#d[0-9a-f]d[0-9a-f]d[0-9a-f]' darkButtonColor ) 
	( '#f[0-9a-f]f[0-9a-f]f[0-9a-f]' darkBaseColor  )
	"yellow  cogs and elements"
	( '#b68340' secondaryAccentColor ) 
	"blue arrows and elements"
	( '#388bb9' ternaryAccentColor ) 
	( '#(4892bc|4792bc|507d94)' accentColor ) 
	( '#5[1-6](9[def]|a[012])c[1-6]' accentColorDarker )
	( '#(55a2ca|479cd3)' ternaryAccentColor ) 
	( '#(b4d5e8|a8d9f5)' darkTernaryAccentColor ) 
	"radio button & check box"
	( '#546075' selectedButtonColor  )
	( '#8b96ab' buttonColor  )
	( '#(d0edf9|d8f3ff)' baseColor  )
	"test button gradient"
	( '#87857f' basePassiveBackgroundColor  )
	( '#c7c7c7' selectionColor  )
 )
]

{ #category : 'converting' }
DarkerDawnSvgColorizer >> convert: anIconName from: aSource to: aDestination [
	| name srcFile dstFile dst |
	name := anIconName , '.svg'.
	dstFile := aDestination / name.
	dstFile exists ifTrue: [ ^ self  ].
	
	srcFile := aSource / name.
	srcFile exists ifFalse: [ FileDoesNotExistException signalWith: srcFile. ^ self ].
	
	dst := dstFile writeStream.
		[ (ZnFastLineReader on: srcFile readStream) linesDo: [ :line |
					| replace |
					replace := self replaceColorsIn: line.
					dst nextPutAll: replace; lf 
		] ] onErrorDo: [ :e | dst close. dstFile delete. e pass ].
	dst close.
]

{ #category : 'accessing - data' }
DarkerDawnSvgColorizer >> defaultStyleRegex [

^ { '^<svg' asRegexIgnoringCase . '<svg style="fill:#{1};fill-opacity:0.99"' format: {self buttonColor asHexString asLowercase} }
]

{ #category : 'accessing - data' }
DarkerDawnSvgColorizer >> regexes [

^ regexes ifNil: [ regexes := {self defaultStyleRegex}, self colorMappingRegexes ] 
]

{ #category : 'converting' }
DarkerDawnSvgColorizer >> replaceColorsIn: aString [
	^ self regexes inject: aString into: [ :acc :each | each first copy: acc replacingMatchesWith: each second  ] 

]

{ #category : 'initialization' }
DarkerDawnSvgColorizer >> reset [
	regexes := nil.
	
]
