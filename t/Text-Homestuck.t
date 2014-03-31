#!/usr/bin/perl -w
use 5.014000;
use strict;
use warnings;

use Test::More tests => 13;
BEGIN { use_ok('Text::Homestuck') };

is aradia
  'Did you set up the teams?',
  'did y0u set up the teams',
  'aradia';

is tavros
  'Are you ready to be trollllled?',
  'aRE YOU READY TO BE TROLLLLLED,',
  'tavros';

is sollux
  'kk dont flip your shit about this but Im setting you up to play a game with some people.',
  'KK dont fliip your 2hiit about thii2 but iim 2ettiing you up two play a game wiith 2ome people.',
  'sollux';

is karkat
  'Hi again, idiot.',
  'HI AGAIN, IDIOT.',
  'karkat';

is nepeta
  '*AC saunters from her dark cave a little bit sleepy from the recent kill*',
  ':33 < *ac saunters from her dark cave a little bit sl33py from the recent kill*',
  'nepeta';

is kanaya
  'Yes, that\'s right.',
  'Yes Thats Right',
  'kanaya';

is vriska
  'Marquise Spinneret Mindfang. :)',
  'Marquise Spinneret Mindfang. ::::)',
  'vriska';

is vriska
  'A big fucking bomb in the core of your battlefield.',
  'A 8ig fucking 8om8 in the core of your 8attlefield.',
  'vriska';

is equius
  'What are you expecting to accomplish with this?',
  'D --> What are you e%pecting to accomplish with this',
  'equius';

TODO: {
	local $TODO = 'Gamzee StUdLyCaPs not implemented';
	is gamzee
	  'It\'s a miracle.',
	  'iT\'s A mIrAcLe.',
	  'gamzee';
}

is eridan
  'your no good connivin fucking backstabbing girl crush that\'s who.',
  'your no good connivvin fuckin backstabbin girl crush thats wwho',
  'eridan';

is feferi
  'HELLO!',
  ')(-ELLO!',
  'feferi';
