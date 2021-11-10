lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "logstash-output-kinesis-atlassian/version"

Gem::Specification.new do |s|
  s.name = "logstash-output-kinesis-atlassian"
  s.version = LogstashOutputKinesisAtlassian::VERSION
  s.licenses = ["Apache License (2.0)"]
  s.summary = "This output plugin sends records to Kinesis using the Kinesis Producer Library (KPL)"
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install logstash-output-kinesis-atlassian. This gem is not a stand-alone program"
  s.authors = ["Alex Simion"]
  s.homepage = "https://www.github.com/asimion-atlassian/logstash-output-kinesis-atlassian"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = {
    "logstash_plugin" => "true",
    "logstash_group" => "output"
  }

  s.platform = "java"

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 5.0.0"
  s.add_runtime_dependency "logstash-codec-plain", "< 6.0.0"
  s.add_runtime_dependency "logstash-codec-json", "< 6.0.0"
  s.add_development_dependency "logstash-devutils"
end