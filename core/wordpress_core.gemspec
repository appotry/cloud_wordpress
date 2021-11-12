$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "wordpress/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "wordpress_core"
  spec.version     = Wordpress::VERSION
  spec.authors     = ["Sead Feng"]
  spec.email       = ["seadfeng@gmail.com"]
  spec.homepage    = "https://github.com/seadfeng/cloud_wordpress"
  spec.summary     = "Cloud Wordpress Core"
  spec.description = "Wordpress Core"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.2"
  spec.add_dependency "paranoia"  
  spec.add_dependency "devise-encryptable" 
  
  spec.add_dependency "mysql2"
  spec.add_dependency "rest-client"
  spec.add_dependency "state_machine"
  spec.add_dependency "net-ssh"
  spec.add_dependency "net-sftp"
  spec.add_dependency "sidekiq", "~> 6.0.3" 
  spec.add_dependency "rack", ">= 2.0.6" , '<= 2.0.8' 

  spec.add_development_dependency "sqlite3"
end
