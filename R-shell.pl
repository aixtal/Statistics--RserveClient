#! /usr/bin/env perl

use Rserve::Connection;

$cnx = new Rserve::Connection('localhost');
Rserve::Connection->init();

my $EOF = 0;
my @result = undef;

while (!$EOF) {
  print "> ";
  $input = <>;
  chomp $input;

  if ($input eq "quit") {
    print "exiting...\n";
    exit 0;
  }
  else {
    print "evaluating $input\n";
    @result = $cnx->evalString($input);
    print "[" . join (", ", @result) . "]\n";
  }
}
