package Alien::Bit::Install::Files;
use strict;
use warnings;
require Alien::Bit;
sub Inline { shift; Alien::Bit->Inline(@_) }
1;

=begin Pod::Coverage

  Inline

=cut
