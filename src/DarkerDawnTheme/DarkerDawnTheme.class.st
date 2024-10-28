"
Dark theme based on Pharo Dawn Theme
"
Class {
	#name : 'DarkerDawnTheme',
	#superclass : 'PharoDarkTheme',
	#category : 'DarkerDawnTheme',
	#package : 'DarkerDawnTheme'
}

{ #category : 'accessing' }
DarkerDawnTheme class >> baseColor [
	^ self  colorConfiguratorClass  baseColor
]

{ #category : 'accessing' }
DarkerDawnTheme class >> borderColor [
	^ self  colorConfiguratorClass  borderColor
]

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

{ #category : 'basic-colors' }
DarkerDawnTheme class >> textColor [
   ^ self colorConfiguratorClass textColor 

]

{ #category : 'accessing' }
DarkerDawnTheme class >> themeName [
	^ 'DarkerDawn'
]

{ #category : 'colors' }
DarkerDawnTheme >> badgeColor [

	^ colorPalette badgeColor
]

{ #category : 'accessing' }
DarkerDawnTheme >> fadedBackgroundWindows [
	^ true
]

{ #category : 'accessing' }
DarkerDawnTheme >> menuSelectionTextColor [ 
	^ self class textColor darker	
]

{ #category : 'fill-styles' }
DarkerDawnTheme >> progressBarProgressFillColor [

	^ self class borderColor darker
]

{ #category : 'defaults' }
DarkerDawnTheme >> shStyleTableName [
	^ #darkerDawnStyleTable
]

{ #category : 'accessing - colors' }
DarkerDawnTheme >> tabColor [
	^ self class  baseColor
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
	^ SolidFillStyle color: (self class baseColor alpha: 0.75)
]

{ #category : 'fill-styles' }
DarkerDawnTheme >> windowActiveFillStyle [
	^ SolidFillStyle color: (self class baseColor adjustBrightness: -0.045)
]

{ #category : 'fill-styles' }
DarkerDawnTheme >> windowInactiveLabelFillStyleFor: aWindow [
	^ self class inactiveTextColor
]
