# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "radiant-archive_children-extension/version"

Gem::Specification.new do |s|
  s.name        = "radiant-archive_children-extension"
  s.version     = RadiantArchiveChildrenExtension::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Benny Degezelle"]
  s.email       = ["hi@mokeypatch.be"]
  s.homepage    = "http://yourwebsite.com/archive_children"
  s.summary     = %q{Archive Children for Radiant CMS}
  s.description = %q{Makes Radiant better by adding archive_children!}
  
  ignores = if File.exist?('.gitignore')
    File.read('.gitignore').split("\n").inject([]) {|a,p| a + Dir[p] }
  else
    []
  end
  s.files         = Dir['**/*'] - ignores
  s.test_files    = Dir['test/**/*','spec/**/*','features/**/*'] - ignores
  # s.executables   = Dir['bin/*'] - ignores
  s.require_paths = ["lib"]
  
  s.post_install_message = %{
  Add this to your radiant project with:
    config.gem 'radiant-archive_children-extension', :version => '~>#{RadiantArchiveChildrenExtension::VERSION}'
  }
end