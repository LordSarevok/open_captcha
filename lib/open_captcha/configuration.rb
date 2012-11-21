module OpenCaptcha
  class Configuration
    attr_accessor :domain
    def initialize #:nodoc:
      @domain = ENV['domain']
    end
  end
end
