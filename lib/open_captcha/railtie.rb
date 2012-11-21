require 'net/http'
require 'open-captcha'
module Rails
  module OpenCaptcha
    class Railtie < Rails::Railtie
      initializer "setup config" do
        begin
          ActionView::Base.send(:include, ::OpenCaptcha::ClientHelper)
          ActionController::Base.send(:include, ::OpenCaptcha::Verify)
        end
      end
    end
  end
end

