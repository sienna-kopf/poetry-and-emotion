class SearchController < ApplicationController
  def index
    author = params[:author]
    # @poem_tone_data = PoemToneData.all_data(author)
    # binding.pry
    search_facade = SearchFacade.new(author)
    @poems = search_facade.search_author
  end
end
