# PharoDarkerDawnTheme

A theme for Pharo Smalltalk. A dark, darker theme with yellowish/orange accent colors for those who prefer black backgrounds.

![2024-11-09-capture](https://github.com/user-attachments/assets/8c216209-420f-4a4c-83e3-5efd4d16a69b)

### Install

In the image, either use Iceberg to fetch the current repository or use the following:

```smalltalk
Metacello new 
	baseline: 'DarkerDawnTheme';
	repository: 'github://terpon/PharoDarkerDawnTheme:pharo13/src';
	load.
```

### Icon packs

Changing the colors by overriding the `UITheme` (and color configurator) is not enough to have a consistent and pleasing look for very dark themes. Some graphical elements are icons and the default icon set was chosen to work on lighter themes.

[A darker icon pack](https://github.com/terpon/pharo-icon-packs) is necessary to get the look on the above screenshot.
For Pharo13 development branch, you can download one tag like [darkDawn-pharo13dev-1](https://github.com/terpon/pharo-icon-packs/releases/tag/darkDawn-pharo13dev-1) directly in the image:
```smalltalk
| dark |
	dark := ThemeIcons named: 'darkerDawn'.
	dark url: 'https://github.com/terpon/pharo-icon-packs/archive/refs/tags/darkDawn-pharo13dev-1.zip'.
	dark downloadFromUrl.
	ThemeIcons current: dark.
```

### Credits

The theme is originally based on PharoDawnTheme https://github.com/sebastianconcept/PharoDawnTheme

