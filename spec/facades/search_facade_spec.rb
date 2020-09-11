require 'rails_helper'

describe SearchFacade do
  it "can form Poem Objects from the hash returned by the api call" do
    facade = SearchFacade.new("Emily")

    expect(facade.search_author.first).to be_a Poem
    expect(facade.search_author.size).to eq(10)
    expect(facade.search_author[0].title).to eq("Not at Home to Callers")
    expect(facade.search_author[0].author).to eq("Emily Dickinson")
    expect(facade.search_author[0].text).to eq("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")
  end
end
