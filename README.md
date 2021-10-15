# Cloud_wordpress is use for wordpress site group management

* Is activeadmin based;
* WordPress blog domain name connects to Cloudflare Partner;
* WordPress host auto install;
* WordPress host distributed management;
* Clone an existing blog when create a new WordPress;
* Multi-language WordPress management;
* php proxy forwarding;
* Admin user role;


## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "wordpress", github: "seadfeng/cloud_wordpress"
gem "active_admin_role", github: "seadfeng/active_admin_role"
```

And then execute:
```bash
$ bundle install 
$ rails webpacker:install
$ rake db:create
$ rails g active_admin:install
$ rails g wordpress:install
$ rake db:migrate
$ rake db:seed
$ rake wordpress:init
$ rake assets:precompile
```

## Update 

```bash
$ rake railties:install:migrations FROM=wordpress
$ rake db:migrate
```

## Application Config

```ruby
# config/application.rb
config.i18n.default_locale = :"zh-CN"
config.active_job.default_url_options = { host: "demo.cloudwp.xyz" }
Rails.application.routes.default_url_options[:host] = "demo.cloudwp.xyz"
```

## Sidekiq Config
```ruby
# config/initializers/sidekiq.rb
Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://127.0.0.1:6379/2' } 
end
Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://127.0.0.1:6379/2' }
end
```

## Wordpress Host System dependence
Centos 8.0+

## System dependence
rails 6.0+
mysql 8.0+

## Dependencies

[activeadmin](https://github.com/activeadmin/activeadmin)

[activeadmin_addons](https://github.com/platanus/activeadmin_addons)

[active_admin_role](https://github.com/seadfeng/active_admin_role)

[active_admin_import](https://github.com/activeadmin-plugins/active_admin_import)


## Sidekiq Service

https://github.com/mperham/sidekiq/blob/07c0e1f4e60298deeab70999f6a33c86959f196a/examples/systemd/sidekiq.service

## Webpacker Using in Rails engines

https://github.com/rails/webpacker/blob/master/docs/engines.md

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

