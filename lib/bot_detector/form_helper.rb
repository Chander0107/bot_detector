module BotDetector
  class FormHelper
    def self.honeypot_field(form)
      form.hidden_field :bot_detector, value: "", autocomplete: "off", style: "display:none;"
    end
  end
end
