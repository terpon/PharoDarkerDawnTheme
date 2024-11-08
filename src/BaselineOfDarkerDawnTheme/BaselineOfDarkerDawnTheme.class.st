"
Baseline for DarkerDawnTheme package.
"
Class {
	#name : 'BaselineOfDarkerDawnTheme',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfDarkerDawnTheme',
	#package : 'BaselineOfDarkerDawnTheme'
}

{ #category : 'baselines' }
BaselineOfDarkerDawnTheme >> baseline: spec [ 
	<baseline>
	
	spec for: #common do: [
		spec 
			package: 'DarkerDawnTheme';
			package: 'DarkerDawnTheme-Tools' with: [ spec requires: #('DarkerDawnTheme' 'OSSubprocess') ].
			
		spec baseline: 'OSSubprocess' with: [
				spec repository: 'github://pharo-contributions/OSSubprocess:master/repository' 
			].
	] 
]
