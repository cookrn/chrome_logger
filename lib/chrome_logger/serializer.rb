require 'base64'
require 'multi_json'

class ChromeLogger
  class Serializer
    attr_reader :console

    def self.serialize( console )
      serializer = new console
      serializer.serialize
    end

    def initialize( console )
      @console = console
    end

    def serialize
      to_base64 to_utf8( to_json console.data )
    end

    def to_base64( utf8_encoded_json )
      Base64.encode64 utf8_encoded_json
    end

    def to_json( data )
      MultiJson.dump data
    end

    def to_utf8( json )
      json.encode 'UTF-8'
    end
  end
end
