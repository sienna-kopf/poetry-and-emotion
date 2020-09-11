require 'rails_helper'

describe "User can visit root path" do
  it "to see a search form" do
    visit '/'

    expect(current_path).to eq(root_path)
    expect(page).to have_content('Welcome to Poetry and Emotion')
    expect(page).to have_selector('input')
  end

  it "to use a search form to get 10 poems for a particular author" do
    visit '/'

    fill_in :author, with: "Emily"
    click_on "Get Poems"

    expect(current_path).to eq(search_path)
    expect(page).to have_css(".author", count: 10)
    expect(page).to have_css(".title", count: 10)
    expect(page).to have_css(".poem", count: 10)
    expect(page).to have_css(".tones", count: 10)

    expect(page).to have_link("Search Another Author")
    click_on "Search Another Author"

    expect(current_path).to eq(root_path)
  end
end
