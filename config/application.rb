require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StartupMissionBaseRails
  class Application < Rails::Application
    # Config default time to Brasília for lesson launch_time
    config.time_zone = 'Brasilia'

    config.active_job.queue_adapter = :sidekiq

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Specify location below
    config.i18n.default_locale = 'pt-BR'

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
