#
# $Id: Aggregate.pm 203 2008-06-20 18:00:43Z pmoore $
#

package NetApp::Aggregate::RAIDGroup;

use version; $VERSION = version->new(qw$Revision: 203 $);

use strict;
use warnings;
use English;
use Carp;

use Class::Std;
use Params::Validate qw( :all );
use Regexp::Common;

{

    my %name_of		:ATTR( get => 'name' );
    my %state_of	:ATTR;

    sub BUILD {

        my ($self,$ident,$args_ref) = @_;

        my @args = %$args_ref;

        my (%args) 	= validate( @args, {
            name	=> { type	=> SCALAR },
            state	=> { type	=> HASHREF },
        });

        $name_of{$ident}	= $args{name};
        $state_of{$ident}	= $args{state};
    }

    sub get_states {
        return keys %{ $state_of{ident shift} };
    }

    sub get_state {
        
        my $self     	= shift;
        my $ident	= ident $self;
        my $state	= shift;

        return $state_of{$ident}->{$state};

    }

}

1;
