class Poem
  attr_reader :title,
              :author,
              :lines

  def initialize(poem_info)
    @title = poem_info[:title]
    @author = poem_info[:author]
    @lines = poem_info[:lines]
  end

  def text
    @lines.join(" ")
  end
end
