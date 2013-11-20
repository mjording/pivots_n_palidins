require 'spec_helper'

describe CharactersController do
  describe "#create" do
    it "creates and shows a new character" do
      post :create, character: { name: 'merlin'}
      # expect(assigns(:character)).to be_a_new(Character)
      expect(response.status).to eq 302
    end
    context "given require params" do
      it "increases Character row by one" do
        expect{post(:create, character: {name: "Merlin"})}.to change{Character.count}.by(1)
      end
    end
  end
  describe "#show" do
    it "renders json for a character" do
      character = Character.create
      get :show, id: character.id
      expect(response.body).to eq character.to_json
    end
  end

end
