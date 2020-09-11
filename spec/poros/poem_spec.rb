require 'rails_helper'

describe Poem do
  it "exists" do
    attrs = {
      title: "Not at Home to Callers",
      author: "Emily Dickinson",
      lines: [
          "Not at Home to Callers",
          "Says the Naked Tree --",
          "Bonnet due in April --",
          "Wishing you Good Day --"
      ]
    }

    poem = Poem.new(attrs)

    expect(poem).to be_a Poem
    expect(poem.title).to eq("Not at Home to Callers")
    expect(poem.author).to eq("Emily Dickinson")
    expect(poem.text).to eq("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")
  end
end
