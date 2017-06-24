name = "csv_scrubber"
$LOAD_PATH << File.expand_path("../lib", __FILE__)
require "#{name.tr("-", "/")}/version"

Gem::Specification.new name, CsvScrubber::VERSION do |s|
  s.summary = "It is awesome"
  s.authors = ["Michael Grosser"]
  s.email = "michael@grosser.it"
  s.homepage = "https://github.com/grosser/#{name}"
  s.files = `git ls-files lib/ bin/ MIT-LICENSE`.split("\n")
  s.license = "MIT"
  s.required_ruby_version = ">= 2.1.0"
end
