# frozen_string_literal: true

require_relative "lib/rephlex/version"

Gem::Specification.new do |spec|
  spec.name = "rephlex"
  spec.version = Rephlex::VERSION
  spec.authors = ["roman turner"]
  spec.email = ["roman.nturner@gmail.com"]

  spec.summary = "Fast and Fun. A ruby micro-framework built on Roda, Sequel, and Phlex components."

  spec.description = <<-DESCRIPTION
  Slightly opinionated, this framework centers around resource allocations and locality of behavior.
  For example a resource like "post" and all the logic centered around decorators/routes/data-model/view components will all like in
  the same directory. This framework provides some small code generation tooling, code reloading, and modern a frontend solution in vite-ruby.


  This framework is purposefully small, and fast. Leaning on Roda's routing tree and Sequel as the ORM you can use the plugin systems to only
  load in the code you truly need. With Roda and Sequel clocking in as the fastest ruby routing system and ORM respectively, they are complimented on the view layer
  with Phlex components, the fastest ruby rendering library.

  Leaning on evoliving tooling in the realm of hypermedia as the engine of application state, we are all-in on systems like Turbo with TurboBoost, or HTMX.

  We do not provide a large system of dsls or 'magic' for Rephlex. We strongly suggest using pure ruby and object oriented programming to solve you needs and to take care of managing your dependencies.
  DESCRIPTION

  spec.homepage = "https://github.com/House-Atlantic/rephlex"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
