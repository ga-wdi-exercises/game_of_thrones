class CharactersController < ApplicationController
  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params)
    redirect_to @house
  end

  def show
    @character = Character.find(params[:id])
    @house = @character.house
  end

  def edit
    @character = Character.find(params[:id])
    @house = @character.house
  end

  def update
    @character = Character.find(params[:id])
    if @character.update(character_params)
      flash[:notice] = "#{@character.name} was successfully updated."
      redirect_to @character
    else
      render :edit
    end
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to @character.house
  end

  private
  def character_params
    params.require(:character).permit(:name, :img_url)
  end
end
