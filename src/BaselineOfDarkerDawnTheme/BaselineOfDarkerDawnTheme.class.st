"
Baseline for DarkerDawnTheme package.
"
Class {
	#name : #BaselineOfDarkerDawnTheme,
	#superclass : #BaselineOf,
	#category : #BaselineOfDarkerDawnTheme
}

{ #category : #baselines }
BaselineOfDarkerDawnTheme >> baseline: spec [ 
	<baseline>
	
	spec for: #common do: [
		spec package: 'DarkerDawnTheme'
	] 
]
