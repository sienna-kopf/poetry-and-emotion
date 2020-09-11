class Tone
  attr_reader :tone_list

  def initialize(tone_info)
    @tone_list = tone_info[:document_tone][:tones]
    @tones = []
  end

  def tones
    @tone_list.map do |tone|
      @tones << tone[:tone_name]
    end.flatten.uniq
  end
end
