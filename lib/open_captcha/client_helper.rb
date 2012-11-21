module OpenCaptcha
  module ClientHelper
    include ActionView::Helpers::AssetTagHelper
    def open_captcha_tags(width, height)
      image_tag("http://www.opencaptcha.com/img/#{Time.now.strftime('%Y%m%d%H%M')}-#{OpenCaptcha.configuration.domain}#{height}-#{width}.jpgx")
    end # recaptcha_tags
  end # ClientHelper
end # Recaptcha
