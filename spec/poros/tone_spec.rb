require 'rails_helper'

describe Tone do
  it "exists" do
    attrs = {
      document_tone: {
        tones: [
          {
            tone_name: "Joy"
          }
        ]
      }
    }

    poem_tone = Tone.new(attrs)

    expect(poem_tone).to be_a Tone
    expect(poem_tone.tones).to eq(["Joy"])
  end
end
