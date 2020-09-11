class PoemTone
  attr_reader :title,
              :author,
              :text,
              :tones

  def initialize(poem_tone_info)
    @title = poem_tone_info[:title]
    @author = poem_tone_info[:author]
    @text = poem_tone_info[:text]
    @tones = poem_tone_info[:tones]
  end
end
