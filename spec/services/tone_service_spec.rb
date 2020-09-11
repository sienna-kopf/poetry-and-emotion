require 'rails_helper'

describe ToneService do
  it "returns tones for a poem text search" do
    service = ToneService.new
    search = service.search("Not at Home to Callers Says the Naked Tree -- Bonnet due in April -- Wishing you Good Day --")
    expect(search).to be_a Hash
    expect(search).to have_key(:document_tone)
    expect(search[:document_tone]).to have_key(:tones)
    expect(search[:document_tone][:tones]).to be_an Array
    expect(search[:document_tone][:tones][0]).to be_an Hash
    expect(search[:document_tone][:tones][0]).to have_key(:tone_name)
    expect(search[:document_tone][:tones][0][:tone_name]).to eq("Joy")
  end
end
