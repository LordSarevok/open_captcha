require 'net/http'
require 'open-catpcha'

ActionView::Base.send(:include, OpenCaptcha::ClientHelper)
ActionController::Base.send(:include, OpenCaptcha::Verify)