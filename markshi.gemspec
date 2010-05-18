lib = File.expand_path('../lib', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'markshi/version'

Gem::Specification.new do |s|
  s.name         = 'markshi'
  s.version      = Markshi::VERSION
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Daniel Cestari"]
  s.email        = ["dcestari@gmail.com"]
  s.homepage     = "http://github.com/dcestari/markshi"
  s.summary      = "Markdown to HTML (previewer)"
  s.description  = "Tool to make Markdown authoring easier by providing fast and good looking previews"

  s.add_dependency 'rdiscount'
  s.add_dependency 'coderay'

  s.files = Dir["{lib,templates}/**/*"]

  s.executables  = ['markshi']
  s.require_path = 'lib'
end

