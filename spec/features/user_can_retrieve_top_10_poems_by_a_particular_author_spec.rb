require 'rails_helper'

describe "User can get 10 poems for a particular author" do
  it "to use a search form to get 10 poems for a particular author" do
    visit '/'

    fill_in :author, with: "Emily"
    click_on "Get Poems"

    expect(current_path).to eq(search_path)
    expect(page).to have_css(".poem_info", count: 10)

    within (first(".poem_info")) do
      expect(page).to have_css(".title")
      title = find('.title').text
      expect(title).not_to be_empty
      expect(title).to eq("Title: Not at Home to Callers")

      expect(page).to have_css(".author")
      author = find('.author').text
      expect(author).not_to be_empty
      expect(author).to eq("Author: Emily Dickinson")

      expect(page).to have_css(".poem")
      poem = find('.poem').text
      expect(poem).not_to be_empty
      expect(poem).to eq("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")

      expect(page).to have_css(".tones")
    end
  end
end
