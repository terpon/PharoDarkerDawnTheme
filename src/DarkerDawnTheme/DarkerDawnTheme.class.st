"
Dark theme based on Pharo Dawn Theme
"
Class {
	#name : 'DarkerDawnTheme',
	#superclass : 'PharoDarkTheme',
	#category : 'DarkerDawnTheme',
	#package : 'DarkerDawnTheme'
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

{ #category : 'fill-styles - buttons' }
DarkerDawnTheme >> buttonMouseOverFillStyleFor: aButton [
	"Return the button mouse over fillStyle for the given color."

	^ SolidFillStyle color: self borderColor 
]

{ #category : 'accessing' }
DarkerDawnTheme >> fadedBackgroundWindows [
	^ true
]

{ #category : 'accessing' }
DarkerDawnTheme >> menuSelectionTextColor [ 
	^ self textColor darker	
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
