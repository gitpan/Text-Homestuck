use 5.014000;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME              => 'Text::Homestuck',
	VERSION_FROM      => 'lib/Text/Homestuck.pm',
	ABSTRACT_FROM     => 'lib/Text/Homestuck.pm',
	AUTHOR            => 'Marius Gavrilescu <marius@ieval.ro>',
	MIN_PERL_VERSION  => '5.14.0',
	LICENSE           => 'perl',
	SIGN              => 1,
	META_MERGE        => {
		dynamic_config => 0,
		resources      => {
			repository => 'https://git.ieval.ro/?p=text-homestuck.git'
		}
	}

);
