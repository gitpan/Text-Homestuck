package Text::Homestuck;

use 5.014000;
use strict;
use warnings;
use parent qw/Exporter/;
our @EXPORT = qw/aradia tavros sollux karkat nepeta kanaya terezi vriska equius gamzee eridan feferi/;
our $VERSION = '0.000_001';

sub filter {
	my ($name, $code) = @_;
	no strict 'refs';
	*{$name} = sub (;$){
		local *__ANON__ = $name;
		if ($_[0]) {
			local $_ = $_[0];
			$code->();
			$_
		} else {
			$code->();
			$_
		}
	}
}

filter aradia => sub {
	y/A-Z/a-z/;
	y/,.?//d;
	s/o/0/g;
};

filter tavros => sub {
	y/a-zA-Z.!?/A-Za-z,,,/;
	s/:\)/}:)/g;
};

filter sollux => sub {
	y/A-Z/a-z/;
	y/s/2/;
	s/i/ii/g;
	s/to/two/g;
	s/\b(fuck|joke|kk|aa)\b/\U$1/g;
};

filter karkat => sub {
	y/a-z/A-Z/;
	s/\bD:/D:B/;
};

filter nepeta => sub {
	y/A-Z/a-z/;
	s/ee/33/;
	$_ = ":33 < $_";
};

filter kanaya => sub {
	y/,.!?'//d;
	s/\b(\w)/\u$1/g;
};

filter terezi => sub {
	y/a-z/A-Z/;
	y/AIE/413/;
	s/(!|\?)/$1$1/g;
	s/:\]|:\)/>:]/g;
};

filter vriska => sub {
	y/Bb/88/;
	s/:\)/::::\)/g;
	s/D:/D::::/g;
};

filter equius => sub {
	s/strong/STRONG/g;
	s/strength/STRONGNESS/g;
	s/x/%/ig;
	s/loo/100/ig;
	s/ool/001/ig;
	s/[?.!]$//;
	$_ = "D --> $_";
};

filter gamzee => sub {
	y/[A-Z]/[a-z]/;
	s/([a-z])(.)/$1\u$2/g;
	s/:\)/:o\)/g;
};

filter eridan => sub {
	y/',.?!//d;
	s/w/ww/g;
	s/v/vv/g;
	s/ing/in/g;
	s/want to/wanna/g;
	s/going to/gonna/g;
};

filter feferi => sub {
	s/H/)(/g;
	s/E/-E/g;
	s/:\)/38)/g;
};

1;
__END__

=head1 NAME

Text::Homestuck - Emulate the typing quirks of Homestuck trolls

=head1 SYNOPSIS

  use Text::Homestuck;
  say feferi 'HELLO WORLD!'; # )(-ELLO WORLD!
  my @array = ('Move along.', 'Nothing to see here');
  aradia for @array;
  say "@array"; # m0ve al0ng n0thing t0 see here

=head1 DESCRIPTION

Text::Homestuck exports several subroutines, one for each typing quirk. There are 12 such functions right now, one for each pre-scratch troll: aradia, tavros, sollux, karkat, nepeta, kanaya, terezi, vriska, equius, gamzee, eridan, feferi.

Each subroutine takes one or no arguments. If called with an argument, they apply the quirk to the argument and return the result. If called with no arguments, they apply the quirk to C<$_>, modifiying it in-place, and returning C<$_>.

=head1 SEE ALSO

Homestuck: L<http://mspaintadventures.com/?s=6&p=001901>

A table of typing quirks: L<http://mspaintadventures.wikia.com/wiki/Typing_Quirk>

=head1 AUTHOR

Marius Gavrilescu C<< <marius@ieval.ro> >>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2014 by Marius Gavrilescu

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.2 or,
at your option, any later version of Perl 5 you may have available.


=cut
