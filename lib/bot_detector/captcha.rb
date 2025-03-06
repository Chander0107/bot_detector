require "rmagick"
require "securerandom"

module BotDetector
  class Captcha
    def self.generate
      num1 = rand(1..10)
      num2 = rand(1..10)
      result = num1 + num2

      img = Magick::Image.new(100, 50) do
        self.background_color = "white"
      end
      draw = Magick::Draw.new
      draw.annotate(img, 0, 0, 10, 30, "#{num1} + #{num2} = ?") do
        self.fill = "black"
        self.font_weight = Magick::BoldWeight
        self.pointsize = 20
      end
      filename = "captcha_#{SecureRandom.hex(5)}.png"
      img.write(filename)
      { filename: filename, answer: result }
    end
  end
end
