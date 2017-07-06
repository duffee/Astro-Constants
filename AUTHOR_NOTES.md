# To Do list

* precision() - make the function aware of the difference between 
absolute and relative uncertainty
* do some benchmarking on the short forms

As always check 
[the github repository](https://github.com/duffee/Astro-Constants/issues "Astro::Constants issues")
for current status on issues.

# Author Notes

The author keeps forgetting how to run dzil.

* ```dzil build```	- builds the module
* ```dzil test```		- tests the module
* ```dzil release```	- builds a distribution for uploading to CPAN
* ```dzil authordeps --missing```	- find missing module dependancies

## Perl Critic

Errors that appear on perlcritic and why the design ignores them

### stern
* use constant	- it's faster than other constant modules
* unpack @_		- just because
* Module does not end with "1;"	- it ends with a string.  that's just how I roll

## Deprecation
One step per version.  No faster.

* if changing name, move name to alternateName
* add to alternate tag
* announce decision to deprecate in upcoming version
* add deprecated tag
** emit warning
** removed from long

### Changing a Name

* add notice to change name to ChangeLog and POD
 * add new name to alternateName type="newName".  old name available in :long
* put new name as Name, old name as alternateName type="oldName".  old name available in :long and :alternate
* change type to ????.  old name available in :alternate
* change type to deprecated, add version attribute.  
 * use of constant emits warning (carp?)  old name available in :deprecated
 * add notice to description tag
 * note deprecation in ChangeLog
* wait minimum of 2 versions and 2 years
* remove deprecated alternateName from PhysicalConstants file
 * note removal in ChangeLog

### Removing a constant

* add notice to change name to ChangeLog and POD
* add deprecated tag, with date and version attributes.  
 * add notice to description tag
 * use of constant emits warning (carp?)  constant available in :deprecated
 * note deprecation in ChangeLog
* wait minimum of 2 versions and 2 years
* remove constant from PhysicalConstants file (to RemovedConstants.xml?)
 * note removal in ChangeLog

