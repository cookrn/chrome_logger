require 'test_helper'

class ChromeLoggerTest < Minitest::Test
  def test_env_name_is_configurable
    assert_respond_to \
      ChromeLogger,
      :env_name=
  end

  def test_env_name_has_default
    assert_equal \
      ChromeLogger::DEFAULT_ENV_NAME,
      ChromeLogger.env_name
  end

  def test_accepts_an_app_on_initialize
    assert_raises ArgumentError do
      ChromeLogger.new
    end

    app = Class.new.new

    assert_equal \
      app,
      ChromeLogger.new( app ).app
  end
end
