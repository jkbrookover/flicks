Gem::Specification.new do |S|
	s.name 			="flicks"
	s.version 		= "1.0.0"
	s.author 		="JKB"
	s.email			="brookover.john@gmail.com"
	s.summary		="plays and revies movies"
	s.description 	= File.read(File.join(	Fileile.dirname(__FILE__), 'README'))
	s.homepage 		="http:pragmaticstudio.com"

	s.files 		=Dir["{bin, lib, spec}"/**/*] + %w(LICENSE README)
	s.test_files 	=Dir["spec/**/*"]
	s.executables	=[ 'flicks']

	s.required_ruby_version = '>=1.9'
	s.add_development_dependency 'rspec'
end