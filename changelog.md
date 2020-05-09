
  { [README](./README.md) }{ [Changelog](./changelog.md) }{ [Best Example](./egReadme.md) }

# CHANGELOG

All notable changes to this project are documented in this file.

The format is based on [Keep a Changelog][changelog].  This project
attempts to adhere to [Semantic Versioning][versioning], nor does
having made this statement imply future intent.

# References

 [changelog]:  https://keepachangelog.com/en/1.0.0/ "Changelog Practice"
 [versioning]: https://semver.org/spec/v2.0.0.html "Semantic Versioning"
 [flapp]:      http://mcgowans.org/pubs/marty3/commonplace/software/README.html "Function, Library, and APP Standards"
 [shdoc]:      https://github.com/applemcg/shelf/blob/master/shdoc.org "Shell Doc-string"
 [Typora]:     https://typora.io/  "A truly minimal Markdown editor"
 [example]:    https://github.com/ranger/ranger/blob/master/CHANGELOG.md "ranger - Vim inspired file manager"
 [RDB]:        https://www.amazon.com/Relational-Database-Management-Prentice-Hall-Software/dp/013938622X  "Unix /RDB"
 [TagManual]:  http://mcgowans.org/pubs/marty3/commonplace/software/tagManual.html "Function Tag Usage"
 [shdoc]:      http://mcgowans.org/pubs/marty3/commonplace/                        "commonplce book"

# HISTORY

## [[ANTICPATED]]

+ clean up introduction of `callStack` in `report_usage`,  a special purpose
  hook to capture a higher-up usage bug.
  
+ complete removal of app_{trace,pause}, trace_{call,stderr}... from utillib


## [0.3.7] - 2020-05-02 backup_directories, copyright, texi

### CHANGED 

+ eliminated _backup_dirver & {backup,version}_directory `backup_directories`,
  moving access to values to Environment Variables `{BACKUP,VERSION}_DIRECTORY` 
  
+ `app_isa` -- eliminated `app_trace` in behalf of PS4
  
+ `copyright` -- to MIT License

+ `lib/backup.texi` -- developing backup.INFO, exercise encourages consolidation

+ `needir` -- for `BACKUP_VERSION_FORMAT` to handle spaces in the name

## [0.3.6] - 2020-04-28 backup_user

### ADDED 

+ `backup_directory` -- needs hook in the APP for user customizations 
   the hook is now a sourceable file {family}_user, e.g. `backup_user`
   which may set USER_BACKUP_AREA, where ALTERNATE_BACKUP_DIRS applies,
   the latter is two sub-directory names for the backup and version 
   respectively..
    
### CHANGED

+ `app_trace` -- many/most removed, since preferred debugging is now
  `debug_this` using PS4
  
+ `graf_init` -- accepts a graf_user, as backup_user  

### FIXED 

+ removed `backup_init` -- no longer needed, untested code in `graf`
  situations left warning messages.

## [0.3.5] - 2020-04-23 prep trace toggle

### FIXED 

+ `graf_copy` -- copy locations, link to GRAF_LIB/src  -- universal OrgMode sources

### CHANGED

+ moved `file_mode` to utillib
+ `app_isa` -- user hook is now an executable: {app}_user,

### ADDED

+ to `utillib` -- preparing testing for the toggle read, pause feature, functions:
  `app_{trace,pause} pause_{on,off,test} trace_{stderr,sub,call}`

## [0.3.4] - 2020-04-14 quiet tracing, shd

### ADDED

functions:

+ `shd_{distribute,allftags,tagdata,help}`
+ `trace_{call,stderr}`

## [0.3.3] - 2020-04-05 shdlib, tags

### ADDED

+ roundup the loose `shd` functions
+ markdown.css file

### CHANGED

+ `stdlib` -- canonical functions, worth future general investigation
+ `shd_listformat` -- files stored in local {NAME} _{funs,docs}.txt

## [0.3.2] - 2020-04-01 shdlib, tags

### ADDED

+ `shdlib` -- collected all shd functions here

### CHANGED

+ `graf_tapp`
    + the functions to be graphed are souced from the library with the _entry function.
    + remove functionlib dependency


## [0.3.1] - 2020-03-31 tag collection, distribution

The output format is suitable for direct conversion to [RDB][] tables.   A [TagManual][] is in preparation.

### ADDED

+ `shd_listformat` -- produces table of functions and TAGS, functions and SHDOC 

### CHANGED

+ `stdlib` inherits SHD_ functions

## [0.3.0] - 2020-03-26 graf, backup APPS

Added or Changed.

### Libraries, Features

+ `graf` -- now builds into APP, using `app_isa` in the `graf_app`
+ `backup` -- now builds into an APP, using `app_isa` in the `backup_app`
+ `utillib` -- functions from FUNCTIONLIB, objective: all functions sourced here.
+ backup.texi -- anticipate INFO 
+ tagging functions, anticipate SHDOC
+ _test functions in graflib
+ text picture of GRAF Tree

### Functions

Some of the functions in `utillib`:

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

### ADDED 

+ **backuplib** -- simply add the lib, convert to an app later

### CHANGED

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

