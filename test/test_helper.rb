begin
  require 'pry'
rescue LoadError
end

gem 'minitest'

%w(
  autorun
  hell
  pride
).each { | lib | require "minitest/#{ lib }" }

require 'chrome_logger'
