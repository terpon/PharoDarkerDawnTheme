Extension { #name : 'UIThemePalette' }

{ #category : '*DarkerDawnTheme' }
UIThemePalette >> darkButtonColor [

	^ paletteDictionary at: #darkButtonColor ifAbsentPut: [ colorConfigurator darkButtonColor ]
]
