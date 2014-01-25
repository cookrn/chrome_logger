require 'chrome_logger/console'
require 'chrome_logger/serializer'

class ChromeLogger
  attr_accessor :app

  DEFAULT_ENV_NAME = 'console'
  HEADER = 'X-ChromeLogger-Data'

  class << self
    attr_accessor :env_name
  end
  @env_name ||= DEFAULT_ENV_NAME

  def initialize( app )
    @app = app
  end

  def call( env )
    env[ env_name ] = Console.new
    status , headers , response = app.call env
    headers[ HEADER ] = Serializer.serialize env[ env_name ]
    [ status , headers , response ]
  end

  def env_name
    self.class.env_name
  end
end
