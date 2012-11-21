module OpenCaptcha
  # Your code goes here...
end

class OpenCaptchaError < StandardError
end

if defined?(Rails)
  require 'open_catpcha/rails'
end

