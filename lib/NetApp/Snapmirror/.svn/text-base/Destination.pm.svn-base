#
# $Id: Snapmirror.pm 203 2008-06-20 18:00:43Z pmoore $
#

package NetApp::Snapmirror::Destination;

use version; $VERSION = version->new(qw$Revision: 203 $);

use strict;
use warnings;

use Class::Std;
use Params::Validate qw( :all );

{

    my %hostname_of	:ATTR( get => 'hostname' );
    my %volume_of	:ATTR( get => 'volume' );

    sub BUILD {

        my ($self,$ident,$args_ref) = @_;

        my @args = %$args_ref;

        my (%args) 	= validate( @args, {
            hostname	=> { type	=> SCALAR },
            volume	=> { type	=> SCALAR },
        });

        $hostname_of{$ident}	= $args{hostname};
        $volume_of{$ident}	= $args{volume};

    }

}

1;
