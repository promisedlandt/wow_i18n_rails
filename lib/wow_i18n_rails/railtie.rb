require "rails"

module WowI18nRails
  class Railtie < ::Rails::Railtie
    initializer "wow_i18n_rails" do |app|
      WowI18nRails::Railtie.instance_eval do
        WowI18n.import app.config.i18n.available_locales
      end
    end
  end
end
