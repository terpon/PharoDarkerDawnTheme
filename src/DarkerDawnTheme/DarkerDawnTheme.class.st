"
Dark theme based on Pharo Dawn Theme
"
Class {
	#name : #DarkerDawnTheme,
	#superclass : #PharoDarkTheme,
	#category : #DarkerDawnTheme
}

{ #category : #accessing }
DarkerDawnTheme class >> baseColor [
	^ Color r: 16r29 g: 16r29 b: 16r22 range: 16rFF
]

{ #category : #accessing }
DarkerDawnTheme class >> basePassiveBackgroundColor [
	^ self baseColor lighter
]

{ #category : #accessing }
DarkerDawnTheme class >> baseSelectionColor [
	^ Color r: 16r49 g: 16r48 b: 16r3E range: 16rFF
]

{ #category : #accessing }
DarkerDawnTheme class >> baseTextColor [
	^ Color white	
]

{ #category : #accessing }
DarkerDawnTheme class >> darkBaseColor [
	^ self baseColor
]

{ #category : #accessing }
DarkerDawnTheme class >> lightBaseColor [
	^ self baseColor lighter
]

{ #category : #accessing }
DarkerDawnTheme class >> lightSelectionColor [
	^ self baseSelectionColor lighter
]

{ #category : #settings }
DarkerDawnTheme class >> newDefaultSettings [
	self setPreferredPreferences.
	^ super newDefaultSettings
		"menuColor: self baseColor lighter;"
		menuTitleColor: self baseColor lighter;
		"windowColor: self baseColor;"
		"selectionColor: self lightSelectionColor;"
		"menuSelectionColor: self baseSelectionColor;"
		menuSelectionTextColor: self baseTextColor darker";"
		"progressBarColor: self baseColor;"
		"standardColorsOnly: true;"
		"autoSelectionColor: false;"
		"preferRoundCorner: false;"
		"fadedBackgroundWindows: false;"
		"secondarySelectionColor: self veryLightSelectionColor;"
		"flatMenu: true"
]

{ #category : #accessing }
DarkerDawnTheme class >> themeName [
	^ 'Darker Dawn'
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> backgroundColor [
	^ Color r: 16r27 g: 16r26 b: 16r20 range: 16rff

]

{ #category : #'accessing colors' }
DarkerDawnTheme >> balloonBackgroundColor [
	^ self backgroundColor lighter
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> borderColor [
	^ self class darkBaseColor adjustBrightness: -0.04
]

{ #category : #'border-styles' }
DarkerDawnTheme >> buttonBorderStyleFor: aButton [
	aButton borderStyle: (BorderStyle width: 1 color: self borderColor)
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> buttonColor [
	^ self backgroundColor lighter
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> caretColor [
	^ self backgroundColor muchLighter
]

{ #category : #'fill-styles' }
DarkerDawnTheme >> desktopColor [
	^ self backgroundColor darker 
]

{ #category : #'growl - specific' }
DarkerDawnTheme >> growlBorderColorFor: aGrowlMorph [
	^ self borderColor alpha: 0.5 
]

{ #category : #'growl - specific' }
DarkerDawnTheme >> growlFillColorFor: aGrowlMorph [
	^ self lightBackgroundColor alpha: 0.5 
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> lightBackgroundColor [
	^ Color r: 16r37 g: 16r37 b: 16r28 range: 16rff

]

{ #category : #'border-styles-scrollbars' }
DarkerDawnTheme >> scrollbarNormalFillStyleFor: aScrollbar [
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	^ SolidFillStyle color: self backgroundColor darker.
]

{ #category : #'fill-styles-scrollbars' }
DarkerDawnTheme >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the pressed scrollbar thumb fillStyle for the given scrollbar."

	^ SolidFillStyle color: self backgroundColor lighter lighter
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> secondarySelectionColor [
	^ self selectionColor darker
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> selectionColor [
	^ self class baseSelectionColor
]

{ #category : #defaults }
DarkerDawnTheme >> shStyleTableName [
	^ #darkerDawnStyleTable
]

{ #category : #'fill-styles-taskbar' }
DarkerDawnTheme >> taskbarFillStyleFor: aTaskbar [
	^ SolidFillStyle color: (self backgroundColor alpha: 0.75)
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> textColor [
	^ Color r: 16rFC g: 16rF3 b: 16rD7 range: 16rff

]

{ #category : #'fill-styles' }
DarkerDawnTheme >> windowInactiveFillStyleFor: aWindow [
	"We do not want the lighting effect when the window goes inactive"
	^SolidFillStyle color: (self class baseColor adjustBrightness: -0.04)
]
