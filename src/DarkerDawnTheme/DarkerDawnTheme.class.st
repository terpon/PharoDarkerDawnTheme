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
	^ self class baseColor adjustBrightness: 0.16
]

{ #category : #'border-styles' }
DarkerDawnTheme >> buttonBorderStyleFor: aButton [
	aButton borderStyle: (BorderStyle width: 1 color: self class baseColor lighter)
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> buttonColor [
	^ self backgroundColor lighter
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> caretColor [
	^ Color r: 16rFF g: 16rFF b: 16r77 range: 16rff

]

{ #category : #'fill-styles' }
DarkerDawnTheme >> desktopColor [
	^ self backgroundColor darker 
]

{ #category : #accessing }
DarkerDawnTheme >> fadedBackgroundWindows [
	^ true
]

{ #category : #'growl - specific' }
DarkerDawnTheme >> growlBorderColorFor: aGrowlMorph [
	^ self borderColor alpha: 0.5 
]

{ #category : #'growl - specific' }
DarkerDawnTheme >> growlFillColorFor: aGrowlMorph [
	^ self lightBackgroundColor alpha: 0.5 
]

{ #category : #'basic-colors' }
DarkerDawnTheme >> inactiveTextColor [
   ^ Color r: 16r95 g: 16r8E b: 16r51 range: 16rff

]

{ #category : #'accessing colors' }
DarkerDawnTheme >> lightBackgroundColor [
	^ Color r: 16r37 g: 16r37 b: 16r28 range: 16rff

]

{ #category : #defaults }
DarkerDawnTheme >> menuItemSelectedTextColorFor: aMenuItem [
	"Answer the color to use for selected menu item text."

	^ self menuSelectionTextColor
]

{ #category : #accessing }
DarkerDawnTheme >> menuSelectionTextColor [ 
	^ self textColor darker	
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> menuTitleColor [
	"Answer the menu title color to use."
	^ self class baseColor lighter
]

{ #category : #'fill-styles-menubar' }
DarkerDawnTheme >> menubarItemSelectionTextColorFor: aMenubarItem [
	^ self menuSelectionTextColor
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

{ #category : #'accessing colors' }
DarkerDawnTheme >> tabColor [
	^ self backgroundColor
]

{ #category : #'fill-styles-buttons' }
DarkerDawnTheme >> tabLabelNormalFillStyleFor: aTabLabel [
	"Return the normal button fillStyle for the given button."
	
	(aTabLabel valueOfProperty: #noFill ifAbsent: [false]) 
		ifTrue: [ ^ SolidFillStyle color: Color transparent ].
	^ SolidFillStyle color: self tabColor
]

{ #category : #'fill-styles-taskbar' }
DarkerDawnTheme >> taskbarFillStyleFor: aTaskbar [
	^ SolidFillStyle color: (self backgroundColor alpha: 0.75)
]

{ #category : #'basic-colors' }
DarkerDawnTheme >> taskbarItemLabelColorForCollapsed: aButton [
   ^ self inactiveTextColor

]

{ #category : #'basic-colors' }
DarkerDawnTheme >> taskbarItemLabelColorForExpanded: aButton [
	^ self textColor
]

{ #category : #'accessing colors' }
DarkerDawnTheme >> textColor [
	^ Color r: 16rFC g: 16rF3 b: 16rD7 range: 16rff

]

{ #category : #'fill-styles' }
DarkerDawnTheme >> windowInactiveFillStyleFor: aWindow [
	^ SolidFillStyle color: (self class baseColor adjustBrightness: -0.045)
]

{ #category : #'fill-styles' }
DarkerDawnTheme >> windowInactiveLabelFillStyleFor: aWindow [
	^ self inactiveTextColor
]
