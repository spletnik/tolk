require 'rails'

module Tolk
  class Engine < Rails::Engine

    isolate_namespace Tolk

    if Rails.version >= '3.1'
      initializer :assets do |app|
        app.config.assets.precompile += ['tolk/libraries.js']
      end
    end
  end
end
