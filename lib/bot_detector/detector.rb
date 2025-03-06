module BotDetector
  class Detector
    def self.detect_browser(user_agent)
      case user_agent
      when /Chrome/i then "Google Chrome"
      when /Firefox/i then "Mozilla Firefox"
      when /Safari/i then "Apple Safari"
      when /Edge/i then "Microsoft Edge"
      when /Opera|OPR/i then "Opera"
      else "Unknown Browser"
      end
    end

    def self.detect_ip(request)
      request.ip
    end
  end
end
