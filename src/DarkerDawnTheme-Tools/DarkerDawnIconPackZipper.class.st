Class {
	#name : 'DarkerDawnIconPackZipper',
	#superclass : 'Object',
	#category : 'DarkerDawnTheme-Tools-Generation',
	#package : 'DarkerDawnTheme-Tools',
	#tag : 'Generation'
}

{ #category : 'executing' }
DarkerDawnIconPackZipper >> zip: aCollection to: aZipFile [

	| theZip ref |
	ref := aZipFile asFileReference.
	ref parent ensureCreateDirectory.
	theZip := ZipArchive new.
	
	aCollection do: [ :subdir  |
		theZip addTree: subdir relativeTo: (subdir parent) match: [ :e | true ].
	].

	ref ensureDelete.
	theZip writeToFile: ref.
	theZip close.
]
