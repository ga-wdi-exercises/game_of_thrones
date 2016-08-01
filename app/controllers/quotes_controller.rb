class QuotesController < ApplicationController

  def new
    @character = Character.find(params[:character_id])
    @quote = Quote.new
  end

  def create
    @character = Character.find(params[:character_id])
    @quote = @character.quotes.create!(quote_params)
    redirect_to @character
  end

  def edit
    @quote = Quote.find(params[:id])
    @character = @quote.character
  end

  def update
    @character = Character.find(params[:character_id])
    @quote = Quote.find(params[:id])
    if @quote.update(quote_params)
      flash[:notice] = "Quote was successfully updated."
      redirect_to @character
    else
      render :edit
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    redirect_to @quote.character
  end

  private
  def quote_params
    params.require(:quote).permit(:saying)
  end
end
