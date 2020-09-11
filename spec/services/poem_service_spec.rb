require 'rails_helper'

describe PoemService do
  it "returns poems by author search" do
    service = PoemService.new
    search = service.search("Emily")
    expect(search).to be_a Array
    expect(search[0]).to be_a Hash
    expect(search[0]).to have_key(:title)
    expect(search[0]).to have_key(:author)
    expect(search[0]).to have_key(:lines)
  end
end
