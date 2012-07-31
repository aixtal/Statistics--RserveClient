# * Rserve client for Perl
# * Supports Rserve protocol 0103 only (used by Rserve 0.5 and higher)
# * Based on rserve-php by Cl�ment TURBELIN
# * @author Djun Kim
# * Licensed under# GPL v2 or at your option v3

# * Rserve::ParserException extends Rserve::Exception
# * @author Djun Kim

package Rserve::ParserException;

use Rserve::Exception;
use strict;
our @ISA = qw(Exception);    # inherits from Exception

sub new {
  my $class = shift;
  my $self = Exception->new();
  bless $self, $class;
  return $self;
}

1;
