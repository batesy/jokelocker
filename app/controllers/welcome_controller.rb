class WelcomeController < ApplicationController
  def index
    if current_user
      redirect_to :jokes
    end
  end
end
