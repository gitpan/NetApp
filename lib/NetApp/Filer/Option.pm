#
# $Id: Volume.pm 203 2008-06-20 18:00:43Z pmoore $
#

package NetApp::Filer::Option;

use version; $VERSION = version->new(qw$Revision: 203 $);

use strict;
use warnings;

use Class::Std;
use Params::Validate qw( :all );

{

    my %name_of		:ATTR( get => 'name' );
    my %value_of	:ATTR( get => 'value' );
        
    sub BUILD {

        my ($self,$ident,$args_ref) = @_;

        my @args = %$args_ref;

        my (%args) 	= validate( @args, {
            name		=> { type	=> SCALAR },
            value	=> { type	=> SCALAR },
        });

        $name_of{$ident}	= $args{name};
        $value_of{$ident}	= $args{value};

    }

}

1;
