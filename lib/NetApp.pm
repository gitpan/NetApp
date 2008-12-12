#
# $Revision: 418 $
#

package NetApp;

# This is the ONLY file that doesn't use the SVN Revision tag
# Build.PL pulls the distro version from here
use version; $VERSION = qv('1.1.2');

use strict;
use warnings;
use English;
use Carp;

use NetApp::Filer;
use NetApp::Aggregate;
use NetApp::Volume;
use NetApp::Qtree;

use NetApp::Snapmirror;
use NetApp::Snapshot;

1;
