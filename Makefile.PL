
use strict;
use warnings;

 BEGIN { require 5.006; } 

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'CPAN::Testers::Metabase',
                       'DISTNAME' => 'CPAN-Testers-Metabase',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'David Golden <dagolden@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Instantiate a Metabase backend for CPAN Testers ',
                       'EXE_FILES' => [],
                       'VERSION' => '1.999001',
                       'PREREQ_PM' => {
                                        'namespace::autoclean' => '0.09',
                                        'Metabase::Archive::SQLite' => '0.009',
                                        'Metabase::Index::SimpleDB' => '0.009',
                                        'File::Spec' => '3.31',
                                        'Net::Amazon::Config' => '0.001',
                                        'Metabase::Index::FlatFile' => '0.009',
                                        'Metabase::Librarian' => '0.009',
                                        'Test::More' => '0.88',
                                        'Metabase::Archive::S3' => '0.009',
                                        'File::Find' => '0',
                                        'File::Temp' => '0.20',
                                        'Path::Class' => '0.17',
                                        'Moose' => '0.93'
                                      },
                       'LICENSE' => 'apache'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



