class PoemToneData
  def self.all_data(author)
    poems_list = self.poem_info(author)

    poems_list.each do |poem|
      {
        title: poem[:title],
        author: poem[:author],
        poem: poem[:lines],
        tones: self.poem_tones(poem[:lines].join(" "))
      }
    end
  end

  def self.poem_info(author)
    PoemService.new.search(author)
  end

  def self.poem_tones(poem_text)
    ToneService.new.search(poem_text)
  end
end
