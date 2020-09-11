class ToneFacade
  attr_reader :poem_text

  def initialize(poem_text)
    @poem_text = poem_text
    @tone_service = ToneService.new
  end

  def search_tone
    results = tone_results

    @tones = Tone.new(results).tones
  end

  def tone_results
    @tone_service.search(@poem_text)
  end
end
