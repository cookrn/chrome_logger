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
end
