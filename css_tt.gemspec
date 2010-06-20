Gem::Specification.new do |s|
  
  PKG_FILES = %w[
    css_tt.gemspec
    generators
    install.rb
    lib
    MIT-LICENSE
    pkg
    rails
    Rakefile
    rdoc
    README.rdoc
    tasks
    test
    uninstall.rb
    generators/css_tt
    generators/css_tt/css_tt_generator.rb
    generators/css_tt/templates
    generators/css_tt/templates/critical.png
    generators/css_tt/templates/css_tt.css
    generators/css_tt/templates/help.png
    generators/css_tt/templates/info.png
    generators/css_tt/templates/warning.png
    generators/css_tt/USAGE
    lib/css_tt.rb
    rails/init.rb
    tasks/css_tt_tasks.rake
    test/css_tt_test.rb
    test/test_helper.rb
  ]
  
  s.name = %q{css_tt}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tadas Tamosauskas", "Alexander Dawson", "Alex Hall"]
  s.date = %q{2010-06-20}
  s.description = %q{Dead simple pure CSS based tooltips for Rails}
  s.email = %q{tadastoo@yahoo.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = PKG_FILES.to_a
  s.has_rdoc = true
  s.homepage = %q{http://github.com/medwezys/css_tt}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "CssTt", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Dead simple pure CSS based tooltips for Rails.}
  s.platform = Gem::Platform::RUBY

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end