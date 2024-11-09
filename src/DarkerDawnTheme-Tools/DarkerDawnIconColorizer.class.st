"
Tool to convert SVG icons colors to the theme colors
"
Class {
	#name : 'DarkerDawnIconColorizer',
	#superclass : 'Object',
	#instVars : [
		'svgColorizer',
		'svgRasterizer',
		'packZipper',
		'scales',
		'shouldRegenerateAll',
		'sourceDirectory',
		'directory',
		'zipFile'
	],
	#category : 'DarkerDawnTheme-Tools-Generation',
	#package : 'DarkerDawnTheme-Tools',
	#tag : 'Generation'
}

{ #category : 'accessing' }
DarkerDawnIconColorizer class >> defaultDirectory [ 

 ^ FileLocator imageDirectory / self defaultName
]

{ #category : 'accessing' }
DarkerDawnIconColorizer class >> defaultName [ 

 ^ 'darkDawn'
]

{ #category : 'converting' }
DarkerDawnIconColorizer >> colorizeIcons [
	| colorizer dst src |
	src := self sourceDirectory.
	src exists ifFalse: [ DirectoryDoesNotExist signalWith: src ].
	
	dst := self svgDirectory.
	dst ensureCreateDirectory.
	self shouldRegenerateAll ifTrue: [ dst ensureDeleteAllChildren ].
	
	colorizer := self svgColorizer.
	colorizer reset.
	self iconDescriptions 
		do: [ :icon | colorizer convert: icon first from: src to: dst ]
		displayingProgress: [ :icon | 'Generating icon {1}' format: { icon first printString } ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> directory [

	^ directory ifNil: [ directory := self class defaultDirectory ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> directory: anObject [

	directory := anObject
]

{ #category : 'accessing - data' }
DarkerDawnIconColorizer >> directoryForScale: aFactor [

	^ self directory /  ('png-scale' , aFactor asString)
]

{ #category : 'generating' }
DarkerDawnIconColorizer >> generateIconDescriptions [
<script: 'self new generateIconDescriptions'>
	| icons descriptions messageString |
	icons := ThemeIcons current icons.
	descriptions := Array new: icons size streamContents: [ :out |
		  icons keysAndValuesDo: [ :key :value |
			  out nextPut: { key. value width. value height } 
			] 
		].
	messageString := ByteString streamContents: [ :out |
		out nextPutAll: 'iconDescriptions'; cr;
			nextPutAll: '"Auto-generated array with name and size of icons."'; cr;
			nextPutAll: '^ ';
			nextPutAll: descriptions storeString;
			cr.
	].
	self class compile: messageString classified: 'accessing - data'


]

{ #category : 'accessing - data' }
DarkerDawnIconColorizer >> iconDescriptions [
"Auto-generated array with name and size of icons."
^ #(#(#arrowDown 7 7) #(#classAbstract 16 16) #(#close 16 16) #(#leftSide 16 16) #(#glamorousSave 16 16) #(#smallVolume 16 16) #(#instVarsPressed 22 22) #(#calendar 16 16) #(#refreshCircling 16 16) #(#smallRedo 16 16) #(#glamorousTrash 16 16) #(#abstract 16 16) #(#haloFontSize 16 16) #(#package 16 16) #(#downArrow 16 16) #(#changeSorter 16 16) #(#smallRightFlush 16 16) #(#references 16 16) #(#eyedropper 38 36) #(#preferences 16 16) #(#smallRemoteOpen 16 16) #(#glamorousMore 16 16) #(#glamorousDropDown 16 16) #(#expandBox 10 10) #(#smallPaste 16 16) #(#classVarsUnselected 22 22) #(#uncheckedBox 12 12) #(#edit 14 14) #(#glamorousRightSide 16 16) #(#smallBold 16 16) #(#glamorousLeft 16 16) #(#processBrowser 16 16) #(#glamorousRestart 16 16) #(#smallHelp 16 16) #(#scale 22 21) #(#question 32 32) #(#radioButtonOff 12 12) #(#lock 16 16) #(#arrowDoubleDown 7 7) #(#smallPublish 16 16) #(#glamorousGreenCircle 16 16) #(#haloGrab 16 16) #(#changeBlock 16 16) #(#pharo 32 32) #(#haloDup 16 16) #(#catalog 16 16) #(#glamorousInto 16 16) #(#changeAdd 16 16) #(#collection 16 16) #(#zoomOut 16 16) #(#bottom 16 16) #(#openFromUrl 16 16) #(#testRed 16 16) #(#haloMenu 16 16) #(#bookmark 16 16) #(#smallFonts 12 12) #(#haloFontEmph 16 16) #(#dropDown 16 16) #(#merge 16 16) #(#flag 16 16) #(#windowMinimizeInactive 16 16) #(#folder 16 16) #(#glamorousFolder 16 16) #(#glamorousOver 16 16) #(#testNotRun 16 16) #(#announcement 16 16) #(#configLoaded 16 16) #(#undo 16 16) #(#glamorousBug 16 16) #(#smallLock 16 16) #(#error 16 16) #(#haloPaint 16 16) #(#smallOk 14 14) #(#smallWindow 16 16) #(#accept 14 14) #(#checkboxSelected 12 12) #(#jump 16 16) #(#monticelloPackage 16 16) #(#glamorousOpenFromUrl 16 16) #(#smallCogState3 16 16) #(#smallBack 16 16) #(#cloudPaused 16 16) #(#comments 16 16) #(#thumbsUp 14 14) #(#smallDebugIt 16 16) #(#overlayModification 10 10) #(#packageDelete 16 16) #(#komitterSqueakSourceRemote 16 16) #(#smallConfiguration 16 16) #(#newerPackagesAvailable 16 16) #(#smallPushpin 16 16) #(#upArrow 24 24) #(#versionControl 16 16) #(#recentMessages 16 16) #(#glamorousZoomOut 16 16) #(#haloRot 16 16) #(#browse 16 16) #(#keymapBrowser 16 16) #(#configDirty 16 16) #(#glamorousZoomToFit 16 16) #(#smallJustified 16 16) #(#arrowUp 7 7) #(#glamorousTable 16 16) #(#uncommentedClass 16 16) #(#zoomToFit 16 16) #(#checkboxUnselected 12 12) #(#user 16 16) #(#smallError 16 16) #(#changeEmpty 12 12) #(#separator 24 5) #(#windowMinimize 16 16) #(#bug 16 16) #(#packageAdd 16 16) #(#protocolNone 16 1) #(#go 13 13) #(#glamorousDiveRight 16 16) #(#diveAllRight 16 16) #(#protocolExtension 16 16) #(#smallWarning 16 16) #(#smallDoIt 13 13) #(#enable 16 16) #(#glamorousBrowse 16 16) #(#glamorousInspect 16 16) #(#checkboxMarker 12 12) #(#smallCogState2 16 16) #(#bitbucket 16 16) #(#glamorousCloud 16 16) #(#smallScreenshot 16 16) #(#pointersTo 13 13) #(#image 12 12) #(#history 16 16) #(#smallInformation 16 16) #(#smallQuestion 16 16) #(#paint 12 12) #(#smallInspectIt 16 16) #(#smallPrintIt 13 13) #(#glamorousSaveToUrl 16 16) #(#down 14 14) #(#group 16 16) #(#page 16 16) #(#exception 16 16) #(#top 16 16) #(#smallOpen 16 16) #(#redo 16 16) #(#smallAuthoringTools 16 16) #(#smallCut 16 16) #(#glamorousSearch 16 16) #(#glamorousPlay 7 10) #(#komitterGemstoneRemote 16 16) #(#smallExpert 16 16) #(#glamorousHelp 16 16) #(#overlayRemove 9 9) #(#smallFullscreen 16 16) #(#open 16 16) #(#glamorousZoomIn 16 16) #(#smallSystemBrowser 16 16) #(#smallDelete 16 16) #(#smallExport 16 16) #(#left 16 16) #(#over 16 16) #(#databaseAdd 16 16) #(#komitterNewSlice 16 16) #(#windowMaximizeInactive 16 16) #(#smallItalic 16 16) #(#remotesManagerRemoveRemote 16 16) #(#glamorousRedo 16 16) #(#smallUpdate 16 16) #(#smallJump 16 16) #(#transcript 16 16) #(#testYellow 16 16) #(#radioButtonMarker 12 12) #(#smallStrikeOut 16 16) #(#diveRight 16 16) #(#haloCollapse 10 16) #(#smallSaveAs 16 16) #(#zoomIn 16 16) #(#branch 16 16) #(#delete 16 16) #(#glamorousGrayCircleEmpty 16 16) #(#rotate 24 22) #(#blank 16 1) #(#userFemale 16 16) #(#redCircle 16 16) #(#komitterSmalltalkhubRemote 16 16) #(#volume 24 24) #(#glamorousLeftSide 16 16) #(#smallAdd 16 16) #(#glamorousBookmark 16 16) #(#protocolPrivate 16 16) #(#add 16 16) #(#glamorousCloudPaused 16 16) #(#glamorousRemove 10 10) #(#publish 16 16) #(#arrowUpAndDown 6 7) #(#glamorousRedCircle 16 16) #(#greenCircle 16 16) #(#greenArrowUpAndDown 9 15) #(#disable 16 16) #(#more 16 16) #(#smallUnderline 16 16) #(#traitRequiredMethod 12 12) #(#windowCloseInactive 16 16) #(#home 16 16) #(#haloDismiss 16 16) #(#windowMaximize 16 16) #(#partialCheckedBox 12 12) #(#checkBoxOn 12 12) #(#smallProfile 16 16) #(#trash 16 16) #(#smallCancel 16 16) #(#hierarchy 13 13) #(#smallLoadProject 16 16) #(#repair 16 16) #(#protocolProtected 16 16) #(#scriptManager 16 16) #(#smallCentered 16 16) #(#glamorousAlarm 16 16) #(#smallInfo 16 16) #(#empty 12 12) #(#upAndDownArrow 16 16) #(#saveToUrl 16 16) #(#confirm 16 16) #(#windowMenuInactive 16 16) #(#smallFind 16 16) #(#changeRemove 16 16) #(#checkBoxPressed 12 12) #(#config 16 16) #(#dirtyPackage 16 16) #(#glamorousRefresh 16 16) #(#glamorousExample 16 16) #(#haloDebug 16 16) #(#table 16 16) #(#overlayDirty 8 8) #(#haloHelp 16 16) #(#github 16 16) #(#smallForward 16 16) #(#haloRecolor 16 16) #(#glamorousLargeGrayCircleEmphasized 19 19) #(#radioButtonUnselected 16 16) #(#smallSelect 16 16) #(#configuration 16 16) #(#smallNew 16 16) #(#smallSave 16 16) #(#diff 16 16) #(#editThiner 14 14) #(#grayCircleEmpty 16 16) #(#up 14 14) #(#classVarsPressed 22 22) #(#komitter 16 16) #(#remotesManagerEditRemote 16 16) #(#remove 16 16) #(#grayCircle 16 16) #(#glamorousUndo 16 16) #(#removeCross 10 10) #(#glamorousUp 14 14) #(#stop 16 16) #(#tools 16 16) #(#warning 16 16) #(#smallQA 16 16) #(#database 16 16) #(#window 16 16) #(#inspect 16 16) #(#githubLight 16 16) #(#haloView 16 16) #(#thumbsDown 14 14) #(#search 16 16) #(#glamorousOpen 16 16) #(#tinyMenu 10 10) #(#checkBoxOff 12 12) #(#string 16 16) #(#play 7 10) #(#smallLeftFlush 16 16) #(#changeUpdate 16 16) #(#morph 16 16) #(#configNew 16 16) #(#restart 16 16) #(#pharoBig 256 256) #(#packageColored 16 16) #(#objects 13 13) #(#halt 16 16) #(#recoverLostChanges 16 16) #(#testGreen 16 16) #(#glamorousSpawn 16 16) #(#nautilus 16 16) #(#glamorousPreferences 16 16) #(#protocolPublic 16 16) #(#book 13 13) #(#checkedBox 12 12) #(#help 16 16) #(#smallObjects 13 13) #(#haloScale 16 16) #(#through 16 16) #(#glamorousDown 14 14) #(#remotesManagerAddRemote 16 16) #(#back 16 16) #(#right 16 16) #(#class 16 16) #(#breakpoint 12 12) #(#cancel 16 16) #(#git 16 16) #(#fullscreen 28 28) #(#alarm 16 16) #(#smallCogInitialState 16 16) #(#smallCopy 16 16) #(#smallPharo 16 16) #(#glamorousAccept 14 14) #(#glamorousThrough 16 16) #(#smallQuit 16 16) #(#radioButtonPressed 12 12) #(#haloDrag 16 16) #(#testRunner 16 16) #(#spawn 16 16) #(#glamorousGo 13 13) #(#menuPin 16 16) #(#magnitude 16 16) #(#smallDebug 16 16) #(#system 16 16) #(#example 16 16) #(#largeGrayCircleEmphasized 19 19) #(#classVarsSelected 22 22) #(#box 16 16) #(#save 16 16) #(#glamorousRight 16 16) #(#smallPaint 12 12) #(#glamorousDiveAllRight 16 16) #(#glamorousCancel 16 16) #(#remote 16 16) #(#emptyPackage 16 16) #(#radioButtonOn 12 12) #(#forward 16 16) #(#addCross 14 14) #(#rightSide 16 16) #(#solidMenu 14 16) #(#glamorousClose 16 16) #(#glamorousEdit 14 14) #(#windowClose 16 16) #(#windowMenu 16 16) #(#workspace 16 16) #(#dirtyMonticelloPackage 16 16) #(#smallUndo 16 16) #(#haloFontStyle 16 16) #(#trait 16 16) #(#painting 21 20) #(#glamorousAdd 14 14) #(#smallHierarchyBrowser 13 13) #(#info 32 32) #(#smallBarcode 16 16) #(#into 16 16) #(#instVarsUnselected 22 22) #(#instVarsSelected 22 22) #(#cloud 16 16) #(#overlayAdd 9 9) #(#smallPrint 16 16) #(#glamorousGrayCircle 16 16) #(#smallLanguage 16 16) #(#gitlab 16 16) #(#smallHome 16 16) #(#arrowDoubleUp 7 7) #(#refresh 16 16) #(#jigsaw 16 16) #(#radioButtonSelected 16 16))

]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> packZipper [

	^ packZipper ifNil: [ packZipper := DarkerDawnIconPackZipper new ]
]

{ #category : 'converting' }
DarkerDawnIconColorizer >> rasterize [
| rasterizer src |
rasterizer := self svgRasterizer.
src := self svgDirectory.
src exists ifFalse: [ DirectoryDoesNotExist signalWith: src ].
self scales
	do: [ :scale | | dst |
		dst := self directoryForScale: scale.
		dst ensureCreateDirectory.
		self shouldRegenerateAll ifTrue: [ dst ensureDeleteAllChildren ].
		self iconDescriptions 
			do: [ :icon | icon bind: [ :name :width :height |
					rasterizer convert: name size: ((width * scale) @ (height * scale)) from: src to: dst. 
			] ]
			displayingProgress: [ :icon | 'Generating icon {1}' format: { icon first printString } ] ]
	displayingProgress: [ :scale | 'Generating icons for scale {1}' format: { scale } ]
]

{ #category : 'running' }
DarkerDawnIconColorizer >> run [
<script: 'self new run'>
	self colorizeIcons.
	self rasterize.
	self zipIconPacks.

]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> scales [

	^ scales ifNil: [ scales := #(1.0 1.5 2.0) ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> scales: anObject [

	scales := anObject
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> shouldRegenerateAll [

	^ shouldRegenerateAll ifNil: [ false ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> shouldRegenerateAll: anObject [

	shouldRegenerateAll := anObject
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> sourceDirectory [

	^ sourceDirectory ifNil: [ sourceDirectory := FileLocator imageDirectory / 'pharo-icon-packs' / 'svg' ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> sourceDirectory: anObject [

	sourceDirectory := anObject
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> svgColorizer [

	^ svgColorizer ifNil: [ svgColorizer := DarkerDawnSvgColorizer new ]
]

{ #category : 'accessing - data' }
DarkerDawnIconColorizer >> svgDirectory [

	^ self directory /  'svg'
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> svgRasterizer [

	^ svgRasterizer ifNil: [ svgRasterizer := DarkerDawnSvgRasterizer new ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> zipFile [ 

	^ zipFile ifNil: [ zipFile := ThemeIcons destinationPath / 'darkDawn.zip' ]
]

{ #category : 'accessing' }
DarkerDawnIconColorizer >> zipFile: anObject [

	zipFile := anObject
]

{ #category : 'converting' }
DarkerDawnIconColorizer >> zipIconPacks [

	| zipper directories |
	directories := self scales collect: [ :scale | 
		self directoryForScale: scale 
	].
	zipper := self packZipper.
	zipper zip: directories to: self zipFile 
]
