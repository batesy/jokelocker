class JokesController < ApplicationController
  def index
    @jokes = Joke.all
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(joke_params)
    if @joke.save
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
    redirect_to jokes_path
  end

  private
  def joke_params
    params.require(:joke).permit(:title, :punchline, :format)
  end
end
