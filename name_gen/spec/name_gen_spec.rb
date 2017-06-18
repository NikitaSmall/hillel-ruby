require "spec_helper"

RSpec.describe NameGen do
  before(:each) do
    NameGen::init
  end

  it "has a version number" do
    expect(NameGen::VERSION).not_to be nil
  end

  it "gets a string name" do
    name = NameGen::get_name

    expect(name).to be_a String
    expect(name).to_not be_empty
  end

  it "generates different names" do
    name_one = NameGen::get_name
    name_two = NameGen::get_name

    expect(name_one).to_not eq(name_two)
  end

  it "generates name with provided number of syllables" do
    syllable_number = 9
    name = NameGen::get_name(syllable_number)
    default_name = NameGen::get_name

    expect(name.length).to be > default_name.length
  end

  it "does not use empty syllables" do
    syllable_number = 3
    name = NameGen::get_name(syllable_number)

    expect(name.length).to be >= syllable_number
  end
end
