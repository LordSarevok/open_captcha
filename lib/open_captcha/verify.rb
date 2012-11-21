module OpenCaptcha
  module Verify
    def verify_open_captcha(options = {})
      params = options[:params] || {}
      file_name = params[:file_name]
      response = params[:response]
      raise OpenCaptchaError if params.blank or file_name.blank
      raise OpenCaptchaError, "No domain key specified." unless OpenCaptcha.configuration.domain

      begin
        http = Net::HTTP
        open_captcha = nil
        Timeout::timeout(options[:timeout] || 3) do
          open_captcha = http.get("http://www.opencaptcha.com/validate.php?img=#{file_name}&ans=#{response}")
        end
      rescue Timeout::Error
      rescue Exception => e
        raise RecaptchaError, e.message, e.backtrace
      end
      
    end # verify_open_captcha
  end # ClientHelper
end # Recaptcha
