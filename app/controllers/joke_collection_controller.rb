class JokeCollectionController < ApplicationController
  def new
    @jokecollection = @joke.joke_collections.build
  end

  def create
    @jokecollection = @joke.joke_collections.build(jokecollection_params)
  end

  private
  def jokecollection_params
    params.require(:joke_collections).permit(:user_id, :joke_id)
  end
end
