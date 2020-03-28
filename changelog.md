
  { [README](./README.md) }{ [Changelog](./changelog.md) }{ [Best Example](./egReadme.md) }

# CHANGELOG

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog][changelog].  This project
attempts to adhere to [Semantic Versioning][versioning], nor does
having made this statement imply future intent.

# DISCUSSION

These introductory sections are copied from the principles above, here
for my ease of access.

## Semantic Versioning

Given a version number MAJOR.MINOR.PATCH, increment the:

+ MAJOR version when you make incompatible API changes,
+ MINOR version when you add functionality in a backwards-compatible
  manner, and
+ PATCH version when you make backwards-compatible bug fixes.

Additional labels for pre-release and build metadata are available as
extensions to the MAJOR.MINOR.PATCH format.

Seem reasonable.

Here is a perfectly good [example][]  of a changelog.

## Guiding Principles

+ Changelogs are for humans, not machines.
+ There should be an entry for every single version.
+ The same types of changes should be grouped.
+ Versions and sections should be linkable.
+ The latest version comes first.
+ The release date of each version is displayed.
+ Mention whether you follow Semantic Versioning.

## Types of changes

+ **ADDED** for new features.
+ **CHANGED** for changes in existing functionality.
+ **DEPRECATED** for soon-to-be removed
+ **REMOVED** for now removed features.
+ **FIXED** for any bug fixes.
+ **SECURITY** in case of vulnerabilities.

## References

 [changelog]:  https://keepachangelog.com/en/1.0.0/ "Changelog Practice"
 [versioning]: https://semver.org/spec/v2.0.0.html "Semantic Versioning"
 [flapp]:      http://mcgowans.org/pubs/marty3/commonplace/software/README.html "Function, Library, and APP Standards"
 [shdoc]:      https://github.com/applemcg/shelf/blob/master/shdoc.org "Shell Doc-string"
 [Typora]:     https://typora.io/  "A truly minimal Markdown editor"
 [example]:    https://github.com/ranger/ranger/blob/master/CHANGELOG.md "ranger - Vim inspired file manager"
 
 



# HISTORY

## [0.3.0] - 2020-03-26 graf, backup APPS

Added or Changed.

### Libraries

+ `graf` -- now builds into APP, using `app_isa` in the `graf_app`
+ `backup` -- now builds into an APP, using `app_isa` in the `backup_app`
+ `utillib` -- functions from FUNCTIONLIB, objective: all functions sourced here.

+ backup.texi -- anticipate INFO 
+ tagging functions, anticipate SHDOC
+ _test functions in graflib
+ text picture of GRAF Tree

### Functionsn

Some in the `utillib`:

+ `awk_file{,s}` -- anticipate locating all system resources
+ `email_comment` -- who am i
+ `for_nomar` -- recursively collect stuff.  here, the callgraph for functios 
+ `foreach` -- CMMD args ...
+ `fun_starter` -- prepare to execute _init functions in a library
+ `home` -- alternative to HOME
+ `indir` -- CMMD 
+ `mkdir` -- implements the -p flag by default, 
+ `myname` -- Nth calling parent function, default 1 = who called me?
+ `nf` -- AWKs NF: lt, gt, eq, ne, help, NF, 
+ `setenv` -- function for the CSH converts
+ `sfg` -- Show the Function names matching Grep pattern
+ ``
## [0.2.7] - 2020-02-23 graf_tidy shd_{collect,getlibr}

+ `utillib` removed app_trace from `runfrom`
+ `stdlib` factored `shd_collect` from `shd_getlibr` for reuse.
+ `graflib` factored `graf_tidy` from untracked `lib_tidy` 
   and added `mk_graf_version` using this changelog
   
### TODO generalize the mk_ ... _version function

+ add `mk_version` to `utillib`

## [0.2.6] - 2020-02-17 backup_main replaces backup function, now an APP

### CHANGED

+ `app_starter`  adds `{lib}_init` calls
+ `backup files, sync` and `allfiles` used `backup` now use `backup main`
+ `backup_entry` adds `lib`, and `allfiles`
+ `f2file` returns the destination directory, used in `graf prep`
+ `graf_prep` returns directory to `graf_copy`, REVISIT interface
+ `isfunction` moved to *stdlib*, `setenv` to *utillib*
+ `isfunction` to **stdlib**
+ `setenv` to **utilib**

## [0.2.5] - 2020-02-13 add backuplib

### FIXED

+ graf_tapp -- copy the APPlib before the standard libs: function, std, util

## [0.2.4] - 2020-02-08 add backuplib

## ADDED 

+ **backuplib** -- simply add the lib, convert to an app later

## CHANGED

+ f2file now puts function copies in $(home)/lib/{ library }.d and the
  ERRor file in ~/tmp/
    

## [0.2.3] - 2020-02-04 app_isa identifies script or library

### FIXED

+ runfrom - simplified directory search, repaired race condition on
  relative directory

### ADDED

+ in **utillib**
    + proc\_parent{,_test} - anticipates functions in a script
    + app\_isa - uses proc_parent to determine SCRIPT or Function library
    + f2file - splits out indivdual functions 

### CHANGED

+ deleted graf, graf\_app Outputs - moved to APP_BIN
+ moved app_ functions out of utillib, into {graf,retired,function) libs

## [0.2.2] - 2020-02-02

Close Issue #3, [collect utility functions](https://github.com/applemcg/bashapp/issues/3#issue-558706370)

### ADDED

+ utillib, previously untracked but now used functions in graf_app
	
### CHANGED

+ graf_tapp function to accomodate **utillib**
+ grap_copy uses **runfrom** to accomodate different library home directories

## [0.2.0] - 2020-02-01

+ Manually installed executable **graf** and **graf_app** created in the
  development directory.

### ADDED

    + bin/graf_app
    + bin/graf

## [0.1.0] - 2020-02-01

+ For unit testing of graf entry points -- The application builder.
  The Requirements are being developed in
   
       :  http://mcgowans.org/pubs/marty3/commonplace/software/applicationreqts.html

+ The standard lib supplies **report** and **shd** function families. See [shdoc][].

+ Here is the [README][flapp]

### ADDED

    + bin/graflib
    + bin/stdlib	




