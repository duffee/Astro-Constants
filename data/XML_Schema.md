# PhysicalConstants.xml

A description of the file format used to store physical constants
supporting the PhysicalConstants.xsd file.

## Collection

The main container for everything.  It holds
* **title**	- the title of the collection
* **description**	- describes how the constants are used
* **timestamp**	- when the file was last written
* **version**	- a version number for this PhysicalConstants file [v0.12, v0.10]
* **source**	- main source for the constant values [CODATA 2014, ]
* **link**	- a url to the source or author of the file
* **items**	- the list of *PhysicalConstant* items

## PhysicalConstant

This describes the attributes of one physical constant.
Options are enclosed in [ ]'s and defaults are **bolded**.

* **name**	- the name of the constant as used in your programming language
  - *type*	- attribute which describes how the name is used.  [**long**, short]
* **alternateName**	- used for older names, aliases, can be more than one
  - *type*	- attribute which describes how the alternateName is used.  [alias, deprecated]
  - *version* - version of Constants file in which type decided
* **description**	- text to describe the constant
* **value**	- the numerical value of the constant
  - *system*	- the system of units for the value [**MKS**, CGS]
* **uncertainty**	- the uncertainty or error in the value
  - *type*	- is the uncertainty in the same units or expressed as a ratio to the value [absolute, relative].
* **dimensions**	- for future use in dimensional analysis,  lists which of the 7 dimensions the constant consists of (e.g. M for mass, L for length, L3 for volume, ML-3 for density)
* **minValue**	- minimum value for the constant, for constants that have values not best described by uncertainty
* **maxValue**	- maximum value for the constant, for constants that have values not best described by uncertainty
* **url**	- a source for the value of the constant
* **categoryList**	- a list of *category* items that the constant belongs to
* **deprecated**	- used to flag a constant that has been deprecated and will be removed from future versions. 
  - *date*	- date of deprecation decision
  - *version*	- version of PhysicalConstants file when deprecated

### category
I use these to export groups of constants into the namespace.
Add useful categories as required, but try not to over use them.
Keep it useful, not as metadata.

* **category**	- a group of constants used together.  
  - conversion	-
  - cosmology	-
  - electromagnetic	-
  - fundamental	-
  - mathematical	-
  - nuclear	-
  - planetary	-
  - unclassified	- used when new constants are added without a category

# Extensions

How can this schema be extended.  We want flexibility, but not breaking changes.
Here are some possibilities.

* **name**	- could add a *language* attribute for names in other programming languages [ruby, python, go].
* **value** - for *system*, MKS could change to SI.  Why, Oh Why would you introduce imperial measurements?

# Proposed Changes

* change ```<url href=""/>``` to ```<source url="http://site" />``` in v0.14
