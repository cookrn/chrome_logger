require 'chrome_logger'
require 'rails/railtie'

class ChromeLogger
  class Railtie < ::Rails::Railtie
    initializer 'chrome_logger.rails_initialization' do | app |
      app.config.middleware.use ChromeLogger
    end
  end
end
