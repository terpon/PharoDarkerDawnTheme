"
Tool to convert SVG icons colors to the theme colors
"
Class {
	#name : 'DarkerDawnColorConverter',
	#superclass : 'DarkThemeColorConfigurator',
	#instVars : [
		'regexes',
		'dataSource',
		'scales',
		'inkscapePath',
		'sourceDirectory',
		'convertedDirectory',
		'rasterDirectory',
		'zipDirectory',
		'shouldRegenerateAll'
	],
	#category : 'DarkerDawnTheme-Tools-Generation',
	#package : 'DarkerDawnTheme-Tools',
	#tag : 'Generation'
}

{ #category : 'accessing - data' }
DarkerDawnColorConverter >> colorMappings [

^ #(
	"black -> white"
	( '#000000' borderColor  )
	( '#(6[a-f]67[0-4]67[0-4]|7[0-4]7[0-4]7[0-4])' selectedButtonColor ) 
	( '#(808080|7[a-f]7[a-f]7[a-f])' lightButtonColor  ) 
	( '#(8[789a-f]8[789a-f]8[789a-f]|9[0-9a-f]9[0-9a-f]9[0-9a-f])' buttonColor ) 
	( '#a7a7a7' buttonColor  ) 
	( '#d[0-9a-f]d[0-9a-f]d[0-9a-f]' darkButtonColor ) 
	( '#(ffffff|fefefe|fbfbfb|f6f9fc)' darkBaseColor  )
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
DarkerDawnColorConverter >> colorizeIcons [
	regexes := nil.
	self convertedDirectory ensureCreateDirectory.
	self shouldRegenerateAll ifTrue: [ self convertedDirectory ensureDeleteAllChildren ].
	self iconDescriptions
		do: [ :icon |
			| name srcFile dstFile dst |
			name := icon first.
			dstFile := self convertedDirectory / (name , '.svg').
			dstFile exists ifFalse: [
				srcFile := self sourceDirectory / (name , '.svg').
				dstFile exists ifTrue: [ dstFile delete ].
				dst := dstFile writeStream.
				[
				(ZnFastLineReader on: srcFile readStream) linesDo: [ :line |
					| replace |
					replace := self replaceColorsIn: line.
					dst nextPutAll: replace; lf 
				] ] onErrorDo: [ :e | dst close. dstFile delete. e pass ].
				dst close ] ]
		displayingProgress: [ :icon |
		'Generating icon {1}' format: { icon first printString } ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> convertedDirectory [

	^ convertedDirectory ifNil: [ convertedDirectory := FileLocator imageDirectory / 'darkDawn' / 'svg' ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> convertedDirectory: anObject [

	convertedDirectory := anObject
]

{ #category : 'accessing - data' }
DarkerDawnColorConverter >> dataSource [
^ dataSource ifNil: [ dataSource := DarkerDawnColorConfigurator new ]
]

{ #category : 'accessing - data' }
DarkerDawnColorConverter >> directoryForScale: aFactor [

^ self rasterDirectory / ('png-scale' , aFactor asString)
]

{ #category : 'accessing - data' }
DarkerDawnColorConverter >> iconDescriptions [
^ #(
	(abstract 16 16)
	(add 16 16)
	(announcement 16 16)
	(arrowDoubleDown 7 7)
	(arrowDoubleUp 7 7)
	(arrowDown 7 7)
	(arrowUp 7 7)
	(arrowUpAndDown 6 7)
	(back 16 16)
	(bitbucket 16 16)
	(blank 16 1)
	(book 13 13)
	(bottom 16 16)
	(box 16 16)
	(branch 16 16)
	(breakpoint 12 12)
	(calendar 16 16)
	(catalog 16 16)
	(changeAdd 16 16)
	(changeBlock 16 16)
	(changeEmpty 12 12)
	(changeRemove 16 16)
	(changeSorter 16 16)
	(changeUpdate 16 16)
	(checkBoxOff 12 12)
	(checkBoxOn 12 12)
	(checkBoxPressed 12 12)
	(checkboxMarker 12 12)
	(checkboxSelected 12 12)
	(checkboxUnselected 12 12)
	(checkedBox 12 12)
	(class 16 16)
	(classAbstract 16 16)
	(classVarsPressed 22 22)
	(classVarsSelected 22 22)
	(classVarsUnselected 22 22)
	(collection 16 16)
	(comments 16 16)
	(config 16 16)
	(configDirty 16 16)
	(configLoaded 16 16)
	(configNew 16 16)
	(configuration 16 16)
	(confirm 16 16)
	(database 16 16)
	(databaseAdd 16 16)
	(delete 16 16)
	(diff 16 16)
	(dirtyMonticelloPackage 16 16)
	(dirtyPackage 16 16)
	(disable 16 16)
	(down 14 14)
	(downArrow 16 16)
	(edit 14 14)
	(empty 12 12)
	(emptyPackage 16 16)
	(enable 16 16)
	(error 16 16)
	(exception 16 16)
	(expandBox 10 10)
	(eyedropper 38 36)
	(flag 16 16)
	(forward 16 16)
	(fullscreen 28 28)
	(git 16 16)
	(github 16 16)
	(githubLight 16 16)
	(gitlab 16 16)
	(glamorousAccept 14 14)
	(glamorousAdd 14 14)
	(glamorousAlarm 16 16)
	(glamorousBookmark 16 16)
	(glamorousBrowse 16 16)
	(glamorousBug 16 16)
	(glamorousCancel 16 16)
	(glamorousClose 16 16)
	(glamorousCloud 16 16)
	(glamorousCloudPaused 16 16)
	(glamorousDiveAllRight 16 16)
	(glamorousDiveRight 16 16)
	(glamorousDown 14 14)
	(glamorousDropDown 16 16)
	(glamorousEdit 14 14)
	(glamorousExample 16 16)
	(glamorousFolder 16 16)
	(glamorousGo 13 13)
	(glamorousGrayCircle 16 16)
	(glamorousGrayCircleEmpty 16 16)
	(glamorousGreenCircle 16 16)
	(glamorousHelp 16 16)
	(glamorousInspect 16 16)
	(glamorousInto 16 16)
	(glamorousLargeGrayCircleEmphasized 19 19)
	(glamorousLeft 16 16)
	(glamorousLeftSide 16 16)
	(glamorousMore 16 16)
	(glamorousOpen 16 16)
	(glamorousOpenFromUrl 16 16)
	(glamorousOver 16 16)
	(glamorousPlay 7 10)
	(glamorousPreferences 16 16)
	(glamorousRedCircle 16 16)
	(glamorousRedo 16 16)
	(glamorousRefresh 16 16)
	(glamorousRemove 10 10)
	(glamorousRestart 16 16)
	(glamorousRight 16 16)
	(glamorousRightSide 16 16)
	(glamorousSave 16 16)
	(glamorousSaveToUrl 16 16)
	(glamorousSearch 16 16)
	(glamorousSpawn 16 16)
	(glamorousTable 16 16)
	(glamorousThrough 16 16)
	(glamorousTrash 16 16)
	(glamorousUndo 16 16)
	(glamorousUp 14 14)
	(glamorousZoomIn 16 16)
	(glamorousZoomOut 16 16)
	(glamorousZoomToFit 16 16)
	(greenArrowUpAndDown 9 15)
	(group 16 16)
	(haloCollapse 10 16)
	(haloDebug 16 16)
	(haloDismiss 16 16)
	(haloDrag 16 16)
	(haloDup 16 16)
	(haloFontEmph 16 16)
	(haloFontSize 16 16)
	(haloFontStyle 16 16)
	(haloGrab 16 16)
	(haloHelp 16 16)
	(haloMenu 16 16)
	(haloPaint 16 16)
	(haloRecolor 16 16)
	(haloRot 16 16)
	(haloScale 16 16)
	(haloView 16 16)
	(halt 16 16)
	(help 16 16)
	(hierarchy 13 13)
	(history 16 16)
	(home 16 16)
	(image 12 12)
	(info 32 32)
	(instVarsPressed 22 22)
	(instVarsSelected 22 22)
	(instVarsUnselected 22 22)
	(jigsaw 16 16)
	(jump 16 16)
	(keymapBrowser 16 16)
	(komitter 16 16)
	(komitterGemstoneRemote 16 16)
	(komitterNewSlice 16 16)
	(komitterSmalltalkhubRemote 16 16)
	(komitterSqueakSourceRemote 16 16)
	(lock 16 16)
	(magnitude 16 16)
	(menuPin 16 16)
	(merge 16 16)
	(monticelloPackage 16 16)
	(morph 16 16)
	(nautilus 16 16)
	(newerPackagesAvailable 16 16)
	(objects 13 13)
	(open 16 16)
	(overlayAdd 9 9)
	(overlayDirty 8 8)
	(overlayModification 10 10)
	(overlayRemove 9 9)
	(package 16 16)
	(packageAdd 16 16)
	(packageColored 16 16)
	(packageDelete 16 16)
	(page 16 16)
	(paint 12 12)
	(painting 21 20)
	(partialCheckedBox 12 12)
	(pharo 32 32)
	(pharoBig 256 256)
	(pointersTo 13 13)
	(processBrowser 16 16)
	(protocolExtension 16 16)
	(protocolNone 16 1)
	(protocolPrivate 16 16)
	(protocolProtected 16 16)
	(protocolPublic 16 16)
	(publish 16 16)
	(question 32 32)
	(radioButtonMarker 12 12)
	(radioButtonOff 12 12)
	(radioButtonOn 12 12)
	(radioButtonPressed 12 12)
	(radioButtonSelected 16 16)
	(radioButtonUnselected 16 16)
	(recentMessages 16 16)
	(recoverLostChanges 16 16)
	(references 16 16)
	(refresh 16 16)
	(remote 16 16)
	(remotesManagerAddRemote 16 16)
	(remotesManagerEditRemote 16 16)
	(remotesManagerRemoveRemote 16 16)
	(remove 16 16)
	(repair 16 16)
	(rotate 24 22)
	(scale 22 21)
	(scriptManager 16 16)
	(separator 24 5)
	(smallAdd 16 16)
	(smallAuthoringTools 16 16)
	(smallBack 16 16)
	(smallBarcode 16 16)
	(smallBold 16 16)
	(smallCancel 16 16)
	(smallCentered 16 16)
	(smallCogInitialState 16 16)
	(smallCogState2 16 16)
	(smallCogState3 16 16)
	(smallConfiguration 16 16)
	(smallCopy 16 16)
	(smallCut 16 16)
	(smallDebug 16 16)
	(smallDebugIt 16 16)
	(smallDelete 16 16)
	(smallDoIt 13 13)
	(smallError 16 16)
	(smallExpert 16 16)
	(smallExport 16 16)
	(smallFind 16 16)
	(smallFonts 12 12)
	(smallForward 16 16)
	(smallFullscreen 16 16)
	(smallHelp 16 16)
	(smallHierarchyBrowser 13 13)
	(smallHome 16 16)
	(smallInfo 16 16)
	(smallInformation 16 16)
	(smallInspectIt 16 16)
	(smallItalic 16 16)
	(smallJump 16 16)
	(smallJustified 16 16)
	(smallLanguage 16 16)
	(smallLeftFlush 16 16)
	(smallLoadProject 16 16)
	(smallLock 16 16)
	(smallNew 16 16)
	(smallObjects 13 13)
	(smallOk 14 14)
	(smallOpen 16 16)
	(smallPaint 12 12)
	(smallPaste 16 16)
	(smallPharo 16 16)
	(smallPrint 16 16)
	(smallPrintIt 13 13)
	(smallProfile 16 16)
	(smallPublish 16 16)
	(smallPushpin 16 16)
	(smallQA 16 16)
	(smallQuestion 16 16)
	(smallQuit 16 16)
	(smallRedo 16 16)
	(smallRemoteOpen 16 16)
	(smallRightFlush 16 16)
	(smallSave 16 16)
	(smallSaveAs 16 16)
	(smallScreenshot 16 16)
	(smallSelect 16 16)
	(smallStrikeOut 16 16)
	(smallSystemBrowser 16 16)
	(smallUnderline 16 16)
	(smallUndo 16 16)
	(smallUpdate 16 16)
	(smallVolume 16 16)
	(smallWarning 16 16)
	(smallWindow 16 16)
	(solidMenu 14 16)
	(stop 16 16)
	(string 16 16)
	(system 16 16)
	(testGreen 16 16)
	(testNotRun 16 16)
	(testRed 16 16)
	(testRunner 16 16)
	(testYellow 16 16)
	(thumbsDown 14 14)
	(thumbsUp 14 14)
	(tinyMenu 10 10)
	(tools 16 16)
	(top 16 16)
	(trait 16 16)
	(traitRequiredMethod 12 12)
	(transcript 16 16)
	(uncheckedBox 12 12)
	(uncommentedClass 16 16)
	(up 14 14)
	(upAndDownArrow 16 16)
	(upArrow 24 24)
	(user 16 16)
	(userFemale 16 16)
	(versionControl 16 16)
	(volume 24 24)
	(warning 16 16)
	(window 16 16)
	(windowClose 16 16)
	(windowCloseInactive 16 16)
	(windowMaximize 16 16)
	(windowMaximizeInactive 16 16)
	(windowMenu 16 16)
	(windowMenuInactive 16 16)
	(windowMinimize 16 16)
	(windowMinimizeInactive 16 16)
	(workspace 16 16)
) "first: 3"
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> inkscapePath [

	^ inkscapePath ifNil: [ inkscapePath := (LibC resultOfCommand: 'which inkscape') trimmed ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> inkscapePath: anObject [

	inkscapePath := anObject
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> rasterDirectory [

	^ rasterDirectory	ifNil: [ rasterDirectory := FileLocator imageDirectory / 'darkDawn' ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> rasterDirectory: anObject [

	rasterDirectory := anObject
]

{ #category : 'converting' }
DarkerDawnColorConverter >> rasterize [
| inkscape logFileReference |
inkscape := self inkscapePath asFileReference fullName.
logFileReference := (FileLocator imageDirectory / 'inkscape.log') fullName.
self scales
	do: [ :scale |
		| targetDirectoryReference |
		targetDirectoryReference := self directoryForScale: scale.
		self shouldRegenerateAll ifTrue: [ targetDirectoryReference ensureDeleteAllChildren ].
		self iconDescriptions 
			do: [ :icon |
				icon bind: [ :name :width :height |
					| targetPNGReference sourceSVGReference shellCommand |
					targetPNGReference := targetDirectoryReference / (name , '.png').
					targetPNGReference exists ifFalse: [
						targetDirectoryReference ensureCreateDirectory.
						sourceSVGReference := self convertedDirectory / (name , '.svg').
						shellCommand := 'unset LD_LIBRARY_PATH && (set -x && {1} --export-filename {2} -w {3} -h {4} {5}) 1>>{6} 2>&1' format:
							({ inkscape. targetPNGReference fullName.
								(width * scale) rounded asString. (height * scale) rounded asString.
								sourceSVGReference fullName. logFileReference } collect: [ :argument |
									'''{1}''' format: { argument copyReplaceAll: '''' with: '''\''''' } ]).
						(LibC system: shellCommand) = 0 & targetPNGReference exists ifFalse: [
							Error signal: 'Could not generate PNG file' ] ] ] ]
			displayingProgress: [ :icon | 'Generating icon {1}' format: { icon first printString } ] ]
	displayingProgress: [ :scale | 'Generating icons for scale {1}' format: { scale } ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> regexes [

^ regexes ifNil: [ regexes := self colorMappings collect: [ :each |
		{ each first asRegexIgnoringCase . '#',(self dataSource perform: each second) asHexString asLowercase }
		] ] 
]

{ #category : 'converting' }
DarkerDawnColorConverter >> replaceColorsIn: aString [
	^ self regexes inject: aString into: [ :acc :each | each first copy: acc replacingMatchesWith: each second  ] 

]

{ #category : 'running' }
DarkerDawnColorConverter >> run [
<script: 'self new run'>
	self colorizeIcons.
	self rasterize.
	self zipIconPacks.

]

{ #category : 'executing' }
DarkerDawnColorConverter >> runInkscapeWith: aCollection [
	| inkscape |
	inkscape := self inkscapePath asFileReference fullName.
	OSSUnixSubprocess new
		command: inkscape;
		arguments: aCollection;
		environmentAt: 'HOME' put: (FileLocator home fullName);
		redirectStdout;
		redirectStderr;
		runAndWaitOnExitDo: [ :process :outString :errString |
		 	outString ifNotEmpty: [ Transcript show: 'Stdout contents: '; show: outString ; cr ].
			process isSuccess ifFalse: [ "OSSUnixProcessExitStatus has a nice #printOn: "
				Transcript show: 'Stderr contents: '; show: errString; cr;
						show: 'Command exit with error status: '; 
						show: process exitStatusInterpreter printString;
						cr.
		 ] ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> scales [

	^ scales ifNil: [ scales := #(1.0 2.0) "#(1.0 1.5 2.0)" ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> scales: anObject [

	scales := anObject
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> shouldRegenerateAll [

	^ shouldRegenerateAll ifNil: [ false ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> shouldRegenerateAll: anObject [

	shouldRegenerateAll := anObject
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> sourceDirectory [

	^ sourceDirectory ifNil: [ sourceDirectory := FileLocator imageDirectory / 'pharo-icon-packs' / 'svg' ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> sourceDirectory: anObject [

	sourceDirectory := anObject
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> zipDirectory [

	^ zipDirectory ifNil: [ zipDirectory := ThemeIcons destinationPath ]
]

{ #category : 'accessing' }
DarkerDawnColorConverter >> zipDirectory: anObject [

	zipDirectory := anObject
]

{ #category : 'converting' }
DarkerDawnColorConverter >> zipIconPacks [

	self zipDirectory parent ensureCreateDirectory.
	self scales do: [ :scale |
	| src zipRef theZip |
	
	zipRef := self zipDirectory / ('darkDawn-{1}.zip' format: scale ).
	zipRef ensureDelete.
	src := self directoryForScale: scale.
	theZip := ZipArchive new.
	src children do: [ :eachFile | theZip addFile: eachFile resolve as: eachFile baseName ]
		displayingProgress: [ :f | 'Archiving icon {1}' format: { f baseName printString } ].
	theZip writeToFile: zipRef.
	theZip close
	]
]
