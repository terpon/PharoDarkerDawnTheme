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
	
	spec for: #pharo do: [
		spec package: 'DarkerDawnTheme'
	] 
]

{ #category : #accessing }
BaselineOfDarkerDawnTheme >> projectClass [
	^ MetacelloCypressBaselineProject
]
