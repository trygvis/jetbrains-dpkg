SYNOPSIS
--------

    ./build-package [-p <product>] [-v <version>] [-u]

EXAMPLE
-------

Build the latest EAP of IntelliJ IDEA

    ./build-package -p idea-iu

DESCRIPTION
--------

`build-package` will create a platform-specific package of Jetbrain's
Intellij IDEA. The packages can be installed using platform
specific/native tools and/or distributed from local package repositories.

It currently only supports building packages of the development builds
of IDEA, either by finding and downloading the latest version directly
from Jetbrain's servers or by being pointed to a build output directory
and use that.

OPTIONS
--------

* `-p <product>`

    The product to build.

    Accepts `idea-iu`, `idea-ic` and `clion`.

* `-s <directory>`

    Sets <directory> to be the input directory when creating the
    package. This is used to build packages from custom builds of IDEA.

    Note that you have to specify the version explicitly.

* `-u`

    Updates the package repository with the appropriate command for
    the platform.

    For debian this means dpkg-scanpackages, for solaris bldcat is used.

* `-v <version>`

    The version of the build to use. If not specified the script will
    automatically find and download the latest EAP build of IDEA 14 from
    http://confluence.jetbrains.net/display/IDEADEV/IDEA+14+EAP

* `-F`

    Force a build of a package, even if there is a package with the same
    version in the repository.

SOLARIS
-------

To build a pkgutil repository run bldcat like this:

    bldcat repository/solaris/`uname -p`/`uname -r`
  
make sure you have the `pkgutilplus` package installed

EXAMPLES
-------

Example 1: Creating a package of the latest Ultimate Edition.

    ./build-package

The flavor can be overridden with `-f`. This option will also be
remembered for the next run.

Example 2: Creating a Solaris package of the latest Ultimate Edition.

    ./build-package -f IU -p solaris

Example 3: Creating a Debian package of the 95.4 build of the Community Edition.

    ./build-package -f IC -p debian -v 95.4

Example 4: Creating a Debian from a custom build of IDEA:

    ./build-package -p debian -f IC -v 1.2.3 -s idea-IC-95.54

BUGS
----

The scripts are not bullet proof, so there might certainly be bugs in
them. The scripts also depend on jetbrains to not change the way they
package and distribute the tar files.

If you find a bug, please file a bug on GitHub:
http://github.com/trygvis/intellij-idea-dpkg/issues


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/trygvis/intellij-idea-dpkg/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

