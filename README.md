 { [README](./README.md) }{ [Changelog](./changelog.md) }{ [Best Example](./egReadme.md) }

# bashapp

## About

+ Author: Marty McGowan, 
+ License: 
+ Website:  http://mcgowans.org/pubs/marty3/commonplace/software/README.html
+ Download:
+ Bug Reports: https://github.com/applemcg/bashapp/issues
+ git clone: http://github.com/applemcg/bashapp.git

## Goals

+ in detail http://mcgowans.org/pubs/marty3/commonplace/software/README.html
+ build an application builder from shell function libraries
+ add the **shdoc** facility, (think javadoc, pydoc, ..) to bash
+ foster practice of command line functions

## Features

+ app -- from a {family}lib write the {family}_app, an executable shell,
  with possible multiple entry points
+ graf -- produce a browsable function call graf of the app
+ shdoc -- documenting shell functions, within the function
+ tags -- for function meta-information
+ assertion checking -- report on pre-condition failure.

## Dependencies

+ Bash 
+ Python
+ Awk 
+ others listed as discovered -- TBD, a feature

## History

This REPO started as a bash function library maintenance practice.
The founding idea is sooner or later in shell programming, a function
is used in a sufficient number of diverse applications.  The objective
here is to build individual apps into a single function library, with
all function calls resolved within the library.  Such a library is
sourced by its executable shell script.

From this date, February 2020, this REPO advances the practice of
collecting the functions in the callgraph of the handful of functions
which define the application.  The functions are stored in the
application library.  As a bonus, the callgraph is rendered as an
OrgMode file, suitable for browsing the source code.

The practice of [Semantic Versioning][Versioning] focuses the
developer's attention on a precise specification of a library designed
to solve a specific problem.

Two features, assertion checking and stanardized function comments,
which are function families, **report** and **shdoc** respectively are
documented in this [SHELF][] -- Shell Libraries and Functions draft
standard

Apart from function internals, finding calling functions (clients) and
used functions (servers) is a necessary part of the function practice.

Tools are provided in an *applib* to discover user functions not
included in a particular application library or commonlib.

# local libraries

In from general to more specific, these function libraries establish the
practice:

+ [utillib](./doc/utillib.md) 
+ [stdlib](./doc/stdlib.md) 
+ [graflib](./doc/graf.md) -- the discovery functions: app_...

The version will remain: v < 1.0.0 until the requirements and user
documentation are incomplete.

### graflib

### stdlib

### utillib

# documentation

[SHELF]: https://github.com/applemcg/shelf/blob/master/README.org
[Versioning]: https://semver.org/spec/v2.0.0.html "Semantic Versioning"

+ follow the local [Changelog](./changelog.md)


