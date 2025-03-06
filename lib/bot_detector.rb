# frozen_string_literal: true

require_relative "bot_detector/version"
require_relative "bot_detector/detector"
require_relative "bot_detector/form_helper"
require_relative "bot_detector/captcha"

module BotDetector
  class Error < StandardError; end
  # Your code goes here...
  def self.hello
    "Hello from bot_detector Gem!"
  end

  class << self
    def detect_browser(user_agent)
      Detector.detect_browser(user_agent)
    end

    def detect_ip(request)
      Detector.detect_ip(request)
    end

    def honeypot_field(form)
      FormHelper.honeypot_field(form)
    end

    def generate_captcha
      Captcha.generate
    end
  end
end
