require 'spec_helper'

describe Character do
  it "should not be nil" do
    expect(Character.new).to be
  end

  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:hit_points)}

end
