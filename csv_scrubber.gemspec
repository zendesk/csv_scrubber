name = "csv_scrubber"
$LOAD_PATH << File.expand_path("../lib", __FILE__)
require "#{name.tr("-", "/")}/version"

Gem::Specification.new name, CsvScrubber::VERSION do |s|
  s.summary = "Awesome srubber for csv processing, macro string escaping and stuff"
  s.authors = ["Miguel Tineo"]
  s.email = "miketineo@gmail.com"
  s.homepage = "https://github.com/zendesk/#{name}"
  s.files = `git ls-files lib/ bin/ MIT-LICENSE`.split("\n")
  s.license = "MIT"
  s.required_ruby_version = ">= 2.1.0"
end
