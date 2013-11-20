require 'spec_helper'

describe "CharacterCreations" do
  describe "POST /characters" do
    it "works! (now write some real specs)" do
      post characters_path
      response.status.should be(302)
    end
  end
end
