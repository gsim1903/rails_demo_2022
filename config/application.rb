require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsDemo2022
  class Application < Rails::Application
#  initalizer(:remove_activestorage_routes, after: :add_routingpaths) do
 #   app.routes_reloader.paths.delete_if { |path| path =~/activestorage|active_model}


    config.load_defaults 6.1
    config.api_only = true
    
    config.generators do |generate|
      generate.assets false
      generate.helper false
      generate.skip_routes true
      generate.helper_specs false
      generate.routing_specs false
      generate.controller_specs false
      generate.request_specs false
    end
  end
end
