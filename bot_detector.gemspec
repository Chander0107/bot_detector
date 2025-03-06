# frozen_string_literal: true

require_relative "lib/bot_detector/version"

Gem::Specification.new do |spec|
  spec.name = "bot_detector"
  spec.version = BotDetector::VERSION
  spec.authors = ["Chander Prakash"]
  spec.email = ["cpkc3121@gmail.com"]

  spec.summary = "This tool provides a comprehensive suite of services designed to detect and block bots on your website, ensuring enhanced security and user experience."
  spec.description = "This tool offers a comprehensive suite of features to effectively detect and block bots on your website, ensuring enhanced security and a seamless user experience. It utilizes advanced browser detection techniques to analyze and identify suspicious activity, helping to distinguish between legitimate users and automated bots. Additionally, the tool includes IP detection to block traffic from known malicious or blacklisted IP addresses, further protecting your site. The integration of a honeypot mechanism adds another layer of defense, using invisible fields that only bots would interact with, allowing them to be flagged and blocked. Furthermore, the tool incorporates a custom self-made image CAPTCHA, presenting visual puzzles that are easy for humans but difficult for bots to solve, providing an extra barrier against automated attacks. Together, these features offer a robust solution to combat bot traffic and ensure the integrity of your website."
  spec.homepage = "https://github.com/Chander0107/bot_detector"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage+"/bot_detector/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_development_dependency "rspec"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
