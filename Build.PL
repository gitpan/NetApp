use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         	=> 'NetApp',
    license             	=> 'perl',
    dist_author         	=> 'Phillip Moore <pmoore6448@gmail.com>',
    dist_version_from   	=> 'lib/NetApp.pm',
    requires => {
        'IPC::Cmd'		=> 0,
        'Class::Std'		=> 0,
        'Params::Validate'	=> 0,
        'Regexp::Common'      	=> 0,
        'Memoize'		=> 0,
        'Net::Telnet'		=> 0,
        'Clone'			=> 0,
        'Test::Exception'	=> 0,
    },
    add_to_cleanup      	=> [ 'NetApp-*' ],
    recursive_test_files	=> 1,
);

$builder->create_build_script();
