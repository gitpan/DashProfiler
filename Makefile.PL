
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DashProfiler',
    AUTHOR              => 'Tim Bunce <Tim.Bunce@pobox.com>',
    VERSION_FROM        => 'lib/DashProfiler.pm',
    ABSTRACT            => '',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More'    => 0,
        DBI             => 1.57,
    },
    dist  => {
        DIST_DEFAULT=> 'clean distcheck disttest tardist',
        PREOP => '$(MAKE) -f Makefile.old distdir',
        COMPRESS => 'gzip -v9', SUFFIX => 'gz',
    },
    clean               => { FILES => 'DashProfiler-[0-9]*' },
);
