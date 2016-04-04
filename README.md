SYNOPSIS
--------

    ./build-package -p <product> [-v <version>] [-u]

EXAMPLE
-------

Build the latest EAP of a Jetbrains product

    ./build-package -p idea-iu

DESCRIPTION
--------

`build-package` will create a Debian package of a product from
Jetbrains The packages can be installed using dpkg and/or distributed
from local package repositories.

It will either download the version given or download the latest EAP
(Early Access Preview) build from Jetbrains' servers.

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

* `-v <version>`

    The version of the build to use. If not specified the script will
    automatically find and download the latest EAP build of IDEA.

* `-F`

    Force a build of a package, even if there is a package with the same
    version in the repository.

EXAMPLES
-------

Example 1: Creating a package of the latest Ultimate Edition.

    ./build-package -p idea-iu

BUGS
----

The scripts are not bullet proof, so there might certainly be bugs in
them. The scripts also depend on jetbrains to not change the way they
package and distribute the tar files.

If you find a bug, please file a bug on GitHub:
http://github.com/trygvis/jetbrains-dpkg/issues
