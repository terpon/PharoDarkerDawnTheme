"
Color used by the `DarkerDawnTheme`
"
Class {
	#name : 'DarkerDawnColorConfigurator',
	#superclass : 'DarkThemeColorConfigurator',
	#category : 'DarkerDawnTheme-Theme',
	#package : 'DarkerDawnTheme',
	#tag : 'Theme'
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
DarkerDawnColorConfigurator >> accentColorDarker [
	^ Color  r: 16r8C g: 16r39 b: 16r00 range: 16rff
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
	^ Color r: 16r79 g: 16r59 b: 16r1b range: 16rFF
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
DarkerDawnColorConfigurator >> darkButtonColor [
	^ self buttonColor darker darker
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> darkTernaryAccentColor [
	^ self ternaryAccentColor adjustBrightness: -0.33
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
DarkerDawnColorConfigurator >> lightButtonColor [
	^ self buttonColor lighter lighter
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

{ #category : 'scrollbars' }
DarkerDawnColorConfigurator >> scrollbarNormalFillStyleFor: aScrollbar [
	"Return the normal scrollbar fillStyle for the given scrollbar."
	
	^ SolidFillStyle color: self lightBaseColor 
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> secondaryAccentColor [
	^ Color r: 16r18 g: 16r55 b: 16rBC range: 16rFF
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> secondarySelectionColor [
	^ self selectionColor darker
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> selectedButtonColor [
	^ Color r: 16rC9 g: 16r85 b: 16r04 range: 16rFF
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
DarkerDawnColorConfigurator >> ternaryAccentColor [
	^ Color r: 16r8E g: 16r21 b: 16r77 range: 16rFF
]

{ #category : 'colors' }
DarkerDawnColorConfigurator >> textColor [
	^ Color r: 16rFC g: 16rF3 b: 16rD7 range: 16rff

]

{ #category : 'windows' }
DarkerDawnColorConfigurator >> windowShadowColor [
	^ self  accentColor
]
