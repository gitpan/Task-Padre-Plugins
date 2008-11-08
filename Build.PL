use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Task::Padre::Plugins',
    license             => 'perl',
    dist_author         => 'Gabor Szabo <szabgab@gmail.com>',
    dist_version_from   => 'lib/Task/Padre/Plugins.pm',
   	requires            => {
		'Padre::Plugin::AcmePlayCode'  => 0,
		'Padre::Plugin::CPAN'          => 0,
		'Padre::Plugin::Encrypt'	   => 0,
		'Padre::Plugin::PAR'           => '0.03',
		'Padre::Plugin::PerlCritic'    => 0,
		'Padre::Plugin::PerlTidy'      => 0,
		'Padre::Plugin::PluginHelper'  => '0.06',
		'Padre::Plugin::Pip'           => '0.13',
		'Padre::Plugin::Validator'     => 0,
		'Padre::Plugin::ViewInBrowser' => 0,
	},

    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Task-Padre-Plugins-*' ],
    create_makefile_pl => 'traditional',
    meta_merge => {
		resources => {
			homepage    => 'http://padre.perlide.org/',
			bugtracker  => 'http://padre.perlide.org/',
			Repository  => 'http://svn.perlide.org/padre',
			MailingList => 'http://mail.perlide.org/mailman/listinfo/padre-dev',
		},
		no_index => {
			directory => [ qw{ t eg share } ],
		},
	},
);

$builder->create_build_script();
