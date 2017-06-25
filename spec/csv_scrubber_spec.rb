require "spec_helper"

SingleCov.covered!

describe CsvScrubber do
  it "has a VERSION" do
    expect(CsvScrubber::VERSION).to match(/^[\.\da-z]+$/)
  end

  it "escapes macro strings" do
    expect(Zendesk::CsvScrubber.scrub_output('=1+1')).to eq("'=1+1")
  end
end
