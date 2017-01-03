require "spec_helper"

describe Poopypants do
  it "has a version number" do
    expect(Poopypants::VERSION).not_to be nil
  end

  it "returns new name" do
    name = Poopypants::Name.new("Eli", "Duke")
    expect(name.change).to eq "Crusty Bubbletush"
  end

  it "strips out all non-alpha characters for first and last name" do
    name = Poopypants::Name.new("Eli 1234567890!@#${%^&*(})", "Duke1234567890!@#${%^&*(}) ")
    expect(name.first).to eq "Eli"
    expect(name.last).to eq "Duke"
  end

  it "handles empty string being submitted for first" do
    name = Poopypants::Name.new("Eli", " ")
    expect(name.change).to eq nil
  end

  it "handles empty string being submitted for last name" do
    name = Poopypants::Name.new(" ", "Duke")
    expect(name.change).to eq nil
  end
end
