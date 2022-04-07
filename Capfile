# Load DSL and Setup Up Stages
require 'capistrano/setup'
require 'capistrano/deploy'

 require "capistrano/scm/git"
 install_plugin Capistrano::SCM::Git

require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rbenv'
require 'capistrano/puma'
install_plugin Capistrano::Puma  # Default puma tasks
require 'capistrano/secrets_yml'

# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }