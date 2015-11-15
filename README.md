# libkoi

Custom LilyPond code snippets and markup modifications for lilypond projects.
Can be used directly with slight modification (the `\include` settings), but is
already implemented in the other templates. Head over to the [music
repository][musicrepo] first for more details.

[musicrepo]: https://github.com/brianclements/lyTemplates-music

## Overview

These files are intended to be bundled and used with the LilyPond templates
contained in lyTemplates. They include my custom code snippets and other
frequently used custom markup modifications for things like improvisation
slashes, rhythmic markings, and chord changes.

Various copyright boilerplate has been included for use in the tagline. 

## Requirements

Lilypond 2.16.2. Some improvements to LilyPond regarding [Jazz fonts][jazzfonts] has
been made, but I have not yet had a chance to explore their possibilities with
the modifications made here.

[jazzfonts]: http://lilypondblog.org/2013/09/lilypond-and-lilyjazz

## Install

## Contribution
Suggestions and contributions to are always welcome and appreciated.

## Documentation

## Releases

## Community

## License
libkoi is licensed under the GPL3 license.

## Credits

## Changelog
### Version 1.1.0
2015.10.26

* add copyright boilerplate for taglines 
* sane defaults for part/score breaks
* comment cleanup and layout overhaul
* repo file cleanup
* upgrade/test for lilypond 2.16.2

### Version 1.0.0
2013.11.28

**Include**

* First version. Includes custom definitions for frequently used functions in
  `definitions.ily` and custom markup designs for chord changes in
  `jazzChords.ily`.
