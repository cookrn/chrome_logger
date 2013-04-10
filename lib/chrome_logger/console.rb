class ChromeLogger
  class Console
    attr_reader :log_items

    def self.logger_for( *kinds )
      kinds.each do | kind |
        class_eval <<-___
          def #{ kind }( *args )
            add_log_items '#{ kind }' , *args
          end
        ___
      end
    end

    def initialize
      @log_items = []
    end

    def add_log_items( level , *args )
      backtrace = caller[ 1 ] # 2 up!
      item = [ args , backtrace , level ]
      @log_items << item
    end

    def data
      {
        'version' => ChromeLogger::VERSION,
        'columns' => [ 'log' , 'backtrace' , 'type' ],
        'rows'    => log_items
      }
    end

    logger_for \
      :error,
      :group,
      :groupCollapsed,
      :groupEnd,
      :info,
      :warn

    alias_method :group_collapsed , :groupCollapsed
    alias_method :group_end , :groupEnd

    # custom to let chrome plugin decide default
    def log( *args )
      add_log_items '' , *args
    end
  end
end
