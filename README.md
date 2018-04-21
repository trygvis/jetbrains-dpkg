SYNOPSIS
--------

    ./build-package -p <product> [-t <release type>]

EXAMPLE
-------

Build the latest build of a Jetbrains product

    ./build-package -p IIU

Find all products:

    ./build-package -l

DESCRIPTION
--------

`build-package` will create a Debian package of a product from
Jetbrains. The packages can be installed using dpkg and/or distributed
from local package repositories.

It will either download the version given or download the latest EAP
(Early Access Preview) build from Jetbrains' servers.

OPTIONS
--------

* `-p <product>`

    The product to build.

    See the output of `-l` for valid values.

* `-l`

    List all available products to build.

* `-t <release type>`

    The release stream to check. One of 'release', 'rc' or 'eap'.

    If not set it will look across all streams.

* `-F`

    Force a build of a package, even if there is a package with the same
    version in the repository.

BUGS
----

The scripts are not bullet proof, so there might certainly be bugs in
them. The scripts also depend on jetbrains to not change the way they
package and distribute the tar files.

If you find a bug, please file a bug on GitHub:
http://github.com/trygvis/jetbrains-dpkg/issues
