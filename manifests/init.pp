# == Class: mascot
#
# Manage (setup/configure) MatrixScience Mascot Server
#
# === Parameters
# [*install::dir*]
#   The target directory for the Mascot Server installation
#
# [*install::sourcearchive*]
#   The path to the Mascot sourcearchive which is used for installing Mascot
#   Server (local path on the server's filesystem)
#
# [*msparser::download::url*]
#   This is only required if the download URL cannot be properly determined by
#   the mechanisms in this class. Usually this class should be able to download
#   the latest version of msparser on it's own.
#   The download URL for an msparser update, as the source archive might only
#   contain a really outdated msparser version not matching the current Perl
#   version.
#   A mail containing the download URL can be requested on
#   http://www.matrixscience.com/msparser_download.html
#
# [*msparser::download::user*]
#   The user to download the msparser update (provided in the mail containing
#   the download URL)
#
# [*msparser::download::pass*]
#   The password to download the msparser update (provided in the mail
#   containing the download URL)
#
# === Examples
#
# TODO
#
# === Authors
#
# Elias Probst <mail@eliasprobst.eu>
#
# === Copyright
#
# Copyright 2013 Elias Probst
#

class mascot (
    $install::dir = '/usr/local/mascot',
    $install::sourcearchive = '',
    $msparser::download::url = '',
    $msparser::download::user = '',
    $msparser::download::pass = '',
) {
    if ! $install::sourcearchive {
        fail("The required param ${install::sourcearchive} wasn't provided")
    }
}
