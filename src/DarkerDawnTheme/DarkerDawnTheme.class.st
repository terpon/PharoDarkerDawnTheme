"
Dark theme based on Pharo Dawn Theme
"
Class {
	#name : 'DarkerDawnTheme',
	#superclass : 'PharoDarkTheme',
	#category : 'DarkerDawnTheme-Theme',
	#package : 'DarkerDawnTheme',
	#tag : 'Theme'
}

{ #category : 'configuration' }
DarkerDawnTheme class >> colorConfiguratorClass [

	^ DarkerDawnColorConfigurator 
]

{ #category : 'basic-colors' }
DarkerDawnTheme class >> inactiveTextColor [
   ^ self colorConfiguratorClass inactiveTextColor 

]

{ #category : 'testing' }
DarkerDawnTheme class >> isAbstract [
	^ false
]

{ #category : 'accessing' }
DarkerDawnTheme class >> themeName [
	^ 'DarkerDawn'
]

{ #category : 'colors' }
DarkerDawnTheme >> badgeColor [

	^ colorPalette badgeColor
]

{ #category : 'border-styles - buttons' }
DarkerDawnTheme >> buttonNormalBorderStyleFor: aButton [
	"Return the normal button borderStyle for the given button."
	(aButton valueOfProperty: #noBorder ifAbsent: [ false ]) ifTrue: [
		^ SimpleBorderStyle new
			  width: 0;
			  baseColor: Color transparent ].
	^ SimpleBorderStyle new
		  width: 1 scaledByDisplayScaleFactor;
		  baseColor: self lightBaseColor 
]

{ #category : 'accessing' }
DarkerDawnTheme >> fadedBackgroundWindows [
	^ true
]

{ #category : 'actions' }
DarkerDawnTheme >> install [
<script: 'self beCurrent'>
	self class beCurrent
]

{ #category : 'accessing' }
DarkerDawnTheme >> menuSelectionTextColor [ 
	^ self textColor darker	
]

{ #category : 'private' }
DarkerDawnTheme >> newFormSetsForScale: scale [

	| size color colorWhite |

	size := (9 * scale) truncated.
	color := self buttonColor.
	colorWhite := self borderColor.
	^ Dictionary new
		at: #treeExpanded put: (self newTreeFormSet: true size: size color: color);
		at: #treeUnexpanded put: (self newTreeFormSet: false size: size color: color);
		at: #whiteTreeExpanded put: (self newTreeFormSet: true size: size color: colorWhite);
		at: #whiteTreeUnexpanded put: (self newTreeFormSet: false size: size color: colorWhite );
		yourself
]

{ #category : 'fill-styles' }
DarkerDawnTheme >> progressBarProgressFillColor [

	^ self  borderColor darker
]

{ #category : 'defaults' }
DarkerDawnTheme >> shStyleTableName [
	^ #darkerDawnStyleTable
]

{ #category : 'accessing - colors' }
DarkerDawnTheme >> tabColor [
	^ self  baseColor
]

{ #category : 'fill-styles-buttons' }
DarkerDawnTheme >> tabLabelNormalFillStyleFor: aTabLabel [
	"Return the normal button fillStyle for the given button."
	
	(aTabLabel valueOfProperty: #noFill ifAbsent: [false]) 
		ifTrue: [ ^ SolidFillStyle color: Color transparent ].
	^ SolidFillStyle color: self tabColor
]

{ #category : 'fill-styles - taskbar' }
DarkerDawnTheme >> taskbarFillStyleFor: aTaskbar [
	^ SolidFillStyle color: (self baseColor alpha: 0.75)
]

{ #category : 'fill-styles' }
DarkerDawnTheme >> windowActiveFillStyle [
	^ SolidFillStyle color: (self baseColor adjustBrightness: -0.045)
]

{ #category : 'fill-styles' }
DarkerDawnTheme >> windowInactiveLabelFillStyleFor: aWindow [
	^ self class inactiveTextColor
]
