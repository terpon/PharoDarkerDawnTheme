Extension { #name : 'SHRBTextStyler' }

{ #category : '*DarkerDawnTheme' }
SHRBTextStyler class >> darkerDawnStyleTable [
	"color can be a valid argument to Color class>>colorFrom: , or nil to
	use the editor text color.
	Multiple emphases can be specified using an array e.g. #(bold italic).
	If emphasis is not specified, #normal will be used.
	if pixel height is not specified , then the editor font size will be used.
	"
	<styleTable: 'Darker dawn'>

 ^ #(
			"(symbol color [emphasisSymbolOrArray [textStyleName [pixelHeight]]])" 

			"default"
			(default 								white)

			"reservedWords"
			(#true 									'9FFC3D')
			(#false 									'629928')
			(#nil 									'629928')
			(#self 									'ECC284')
			(#super									'ECC284')
			(#thisContext 						'ECC284' bold)

			"primitiveTypes"
			(character 							'EFEF29')
			(number 								'E8E187')
			(symbol 									'FA9160')
			(string 									'CACDA6')

			"selectorPatterns & messageSends"
			(patternSelector 					'729FCF')
			(selector 								white)
			(incompleteSelector					'E8E2B7')

			"args"
			(patternArg 							'ECC284') 
			(blockPatternArg 					'ECC284')
			(blockArg 								'ECC284')
			(argument 								'ECC284')
			
			"variable"
			(blockTempVar 						'ECC284')
			(blockPatternTempVar 				'ECC284')
			(tempVar 								'ECC284')
			(patternTempVar 					'ECC284')
			(incompleteIdentifier 				'E8E2B7')

			"instanceVar"
			(instVar 								'ECC284')
			(classVar 								'CEEAA7' bold)

			"globalVar"
			(globalVar 							'FCAF3E' bold)
			(poolConstant 						'A7E2ED' bold)

			"comment"
			(comment 								'82825F')

			"error"
			(invalid 									'EE3F08' bold)
			(undefinedSelector 					'EE3F08')
			(undefinedIdentifier 				'EE5F08')

			"syntax"							
			(return 									'ECC284')
			(blockArgColon 						'ECC284')

			(parenthesis 							white)
			(parenthesis1 						(green muchLighter))
			(parenthesis2 						(magenta muchLighter))
			(parenthesis3 						(red muchLighter))
			(parenthesis4 						(green lighter))
			(parenthesis5 						(orange lighter))
			(parenthesis6 						(magenta lighter))
			(parenthesis7 						blue)

			(block 									white)
			(block1 									(green muchLighter))
			(block2 									(magenta muchLighter))
			(block3 									(red muchLighter))
			(block4 									(green lighter))
			(block5 									(orange lighter))
			(block6 									(magenta lighter))
			(block7 									blue)

			(byteArrayStart 						'8BEDFF')
			(byteArrayEnd 						'8BEDFF')
			(byteArrayStart1 					'6BCDFF')
			(byteArrayEnd1 						'6BCDFF')

			(brace 									white)
			(brace1 									(green muchLighter))
			(brace2 									(magenta muchLighter))
			(brace3 									(red muchLighter))
			(brace4 									(green lighter))
			(brace5 									(orange lighter))
			(brace6 									(magenta lighter))
			(brace7 									blue)

			(cascadeSeparator 					white)
			(statementSeparator 				white)
			(methodTempBar 						white)
			(blockTempBar 						white)
			(blockArgsBar 						white)

			"not used?"										
			(primitive 								'B4DD6E')
			(pragma 								'B4DD6E')
    )
]
