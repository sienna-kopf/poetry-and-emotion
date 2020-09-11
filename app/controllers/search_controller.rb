class SearchController < ApplicationController
  def index
    author = params[:author]
    search_facade = SearchFacade.new(author)
    @poems = search_facade.search_author
  end
end
