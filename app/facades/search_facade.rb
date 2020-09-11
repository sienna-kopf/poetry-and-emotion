class SearchFacade
  attr_reader :author

  def initialize(author)
    @author = author
    @poem_service = PoemService.new
  end

  def search_author
    results = poem_results

    @poems = results.map do |poem_info|
      Poem.new(poem_info)
    end.take(10)
  end

  def poem_results
    @poem_service.search(@author)
  end
end
