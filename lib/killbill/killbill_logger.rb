# Plugin logger that will delegate to the OSGI LogService
# Used for regular logging for plugins, as well as Rack logger and Error Stream
# Methods to implement for rack are described here: http://rack.rubyforge.org/doc/SPEC.html
module Killbill
  module Plugin
    class KillbillLogger

      attr_accessor :log_level

      def initialize(delegate)
        @logger    = delegate
        # Match Logger levels
        @log_level = 1 # Logger::INFO
      end

      def debug(message=nil, &block)
        @logger.log(4, build_message(message, &block))
      end

      def info(message=nil, &block)
        @logger.log(3, build_message(message, &block))
      end

      def warn(message=nil, &block)
        @logger.log(2, build_message(message, &block))
      end

      def error(message=nil, &block)
        @logger.log(1, build_message(message, &block))
      end

      # Rack Error stream
      alias_method :puts, :warn
      alias_method :write, :warn

      def flush
      end

      def close
      end

      def add(severity, message = nil, progname = nil, &block)
        case severity
          when 0 # Logger::DEBUG
            debug(message || progname, &block)
          when 1 # Logger::INFO
            info(message || progname, &block)
          when 2 # Logger::WARN
            warn(message || progname, &block)
          when 3 # Logger::ERROR
            error(message || progname, &block)
          when 4 # Logger::FATAL
            fatal(message || progname, &block)
          when 5 # Logger::UNKNOWN
            info(message || progname, &block)
          else
            info(message || progname, &block)
        end
      end

      def build_message(message=nil, &block)
        if message.nil?
          if block_given?
            message = yield
          else
            message = '(nil)'
          end
        end
        message.nil? ? '(nil)' : message.to_s
      end

      alias_method :fatal, :error

      def debug?
        # Logger::DEBUG
        0 >= @log_level
      end

      def info?
        # Logger::INFO
        1 >= @log_level
      end

      def warn?
        # Logger::WARN
        2 >= @log_level
      end

      alias_method :error?, :warn?
      alias_method :fatal?, :error?
    end
  end
end
