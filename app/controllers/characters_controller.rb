class CharactersController < ApplicationController
  def create

    @character = Character.new character_params
    if @character.save
      redirect_to @character
    else
      render "FAIL"
    end
  end

  def show
    render json: Character.find(params[:id]).to_json
  end


  private

  def character_params
    params.require(:character).permit(:name)
  end
end
