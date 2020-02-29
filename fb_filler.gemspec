
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fb_filler/version"

Gem::Specification.new do |spec|
  spec.name          = "fb_filler"
  spec.version       = FbFiller::VERSION
  spec.authors       = ['publicover']
  spec.email         = ["jameslpublicover@gmail.com"]

  spec.summary       = %q{Use your schema to fill a FactoryGirl file.}
  spec.description   = %q{We all totally practice TDD. Clearly. But sometimes 
                       we inherit a project that wasn't as fastidious about it 
                       as we are. This gem takes a column name from the user and 
                       uses it to fill out a FactoryGirl file.}
  # spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ['lib/fb_filler.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
