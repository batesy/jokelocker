class JokesController < ApplicationController
  def index
    if current_user
      @jokes = Joke.all
    else
      redirect_to :root
    end
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(joke_params)
    @joke.creator_id = current_user.id
    if @joke.save
      # @joke.joke_collections.build (Why didn't this work?)
      current_user.jokes << @joke
      # JokeCollection.create(user_id: current_user.id, joke_id: @joke.id)
      redirect_to jokes_path
    else
      render 'new'
    end
  end

  def show
    @joke = Joke.find(params[:id])
  end

  def destroy
    @joke = Joke.find(params[:id])
    @joke.destroy
    JokeCollection.where(:joke_id => params[:id]).destroy_all
    redirect_to jokes_path
  end

  def add
    @joke = Joke.find(params[:id])
    current_user.jokes << @joke
    redirect_to user_path(current_user)
  end

  private
  def joke_params
    params.require(:joke).permit(:title, :punchline, :format)
  end
end
