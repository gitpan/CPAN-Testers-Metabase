# 
# This file is part of CPAN-Testers-Metabase
# 
# This software is Copyright (c) 2010 by David Golden.
# 
# This is free software, licensed under:
# 
#   The Apache License, Version 2.0, January 2004
# 
use strict;
use warnings;
package CPAN::Testers::Metabase;
BEGIN {
  $CPAN::Testers::Metabase::VERSION = '1.999001';
}
# ABSTRACT: Instantiate a Metabase backend for CPAN Testers 

1;



=pod

=head1 NAME

CPAN::Testers::Metabase - Instantiate a Metabase backend for CPAN Testers 

=head1 VERSION

version 1.999001

=head1 SYNOPSIS

     use CPAN::Testers::Metabase::AWS;
 
     my $mb = CPAN::Testers::Metabase::AWS->new( %aws_args );
 
     my $librarian = $mb->public_librarian;

=head1 DESCRIPTION

The CPAN::Testers::Metabase namespace is intended to span a collection
of subclasses that instantiate specific Metabase backend storage and indexing
capabilities for a CPAN Testers style Metabase.

Each subclass consumes the L<Metabase::Gateway> role and can be used by
the L<Metabase::Web> application as a data model.

See specific classes for more detail:

=over

=item *

L<CPAN::Testers::Metabase::AWS> -- storage and indexing with
Amazon Web Services

=back

=over

=item *

L<CPAN::Testers::Metabase::Demo> -- SQLite archive and flat-file
index (for testE<sol>demo purposes only)

=back

=head1 BUGS

Please report any bugs or feature requests using the CPAN Request Tracker  
web interface at L<http://rt.cpan.org/Dist/Display.html?Queue=CPAN-Testers-Metabase>

When submitting a bug or request, please include a test-file or a patch to an
existing test-file that illustrates the bug or desired feature.

=head1 AUTHOR

  David Golden <dagolden@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2010 by David Golden.

This is free software, licensed under:

  The Apache License, Version 2.0, January 2004

=cut


__END__


