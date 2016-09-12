class BackpackPokemonsController < ApplicationController
  include ActionView::Helpers::TextHelper

  def create
    pokemon = Pokemon.find(params[:pokemon_id])
    @backpack.add_pokemon(params[:pokemon_id])
    # backpack = session[:backpack] || {}
    # backpack[pokemon.id] ||= 0
    # backpack[pokemon.id] += 1
    session[:backpack] = @backpack.contents
    flash[:notice] = "You now have #{pluralize(1, pokemon.name)}."
    redirect_to root_path
  end
end
