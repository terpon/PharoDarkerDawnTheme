"
Color used by the `DarkerDawnTheme`
"
Class {
	#name : 'DarkerDawnColorConfigurator',
	#superclass : 'DarkThemeColorConfigurator',
	#category : 'DarkerDawnTheme',
	#package : 'DarkerDawnTheme'
}

{ #category : 'basic-colors' }
DarkerDawnColorConfigurator class >> inactiveTextColor [
   ^ Color r: 16r95 g: 16r8E b: 16r51 range: 16rff

]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> accentColor [
	^ Color  r: 16rc7 g: 16r51 b: 16r00 range: 16rff
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> backgroundColor [
	^ self  baseColor

]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> badgeColor [

	^ Color yellow alpha: 0.5
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> balloonBackgroundColor [
	^ self backgroundColor adjustBrightness: 0.04
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> baseColor [
	^ Color r: 16r19 g: 16r19 b: 16r0b range: 16rFF
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> basePassiveBackgroundColor [
	^ self baseColor adjustBrightness: 0.08
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> baseSelectionColor [
	^ Color r: 16r49 g: 16r48 b: 16r3E range: 16rFF
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> borderColor [ 
	^ Color r: 16rD9 g: 16rA9 b: 16r2B range: 16rFF
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> buttonColor [
	^ self backgroundColor adjustBrightness: 0.10
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> caretColor [
	^ Color r: 16rFF g: 16rFF b: 16r77 range: 16rff

]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> darkBaseColor [
	^ self baseColor adjustBrightness: -0.025
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> desktopColor [
	^ Color black
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> disabledLabelColor [
	^ self class inactiveTextColor 
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> growlBorderColorFor: aGrowlMorph [
	^ self borderColor alpha: 0.5 
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> growlFillColorFor: aGrowlMorph [
	^ self lightBackgroundColor alpha: 0.5 
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> lightBackgroundColor [
	^ self  lightBaseColor 

]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> lightBaseColor [
	^ self baseColor adjustBrightness: 0.025
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> lightSelectionColor [
	^ self baseSelectionColor adjustBrightness: 0.16
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> lineNumberColor [ 
	^ self  accentColor 
]

{ #category : 'menus' }
DarkerDawnColorConfigurator >> menuTitleColor [
	"Answer the menu title color to use."
	^ self lightBackgroundColor 
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> scrollbarNormalFillStyleFor: aScrollbar [
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	^ SolidFillStyle color: self  darkBaseColor 
]

{ #category : 'fill-styles - scrollbars' }
DarkerDawnColorConfigurator >> scrollbarPressedThumbFillStyleFor: aScrollbar [
	"Return the pressed scrollbar thumb fillStyle for the given scrollbar."

	^ SolidFillStyle color: self  lightBaseColor 
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> secondarySelectionColor [
	^ self selectionColor darker
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> selectionColor [
	^ self  baseSelectionColor
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> taskbarItemLabelColorForCollapsed: aButton [
   ^ self class  inactiveTextColor

]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> taskbarItemLabelColorForExpanded: aButton [
	^ self textColor
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> textColor [
	^ Color r: 16rFC g: 16rF3 b: 16rD7 range: 16rff

]

{ #category : 'windows' }
DarkerDawnColorConfigurator >> windowShadowColor [
	^ self  accentColor
]
