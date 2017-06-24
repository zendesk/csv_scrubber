require "spec_helper"

SingleCov.covered!

describe CsvScrubber do
  it "has a VERSION" do
    expect(CsvScrubber::VERSION).to match(/^[\.\da-z]+$/)
  end
end
