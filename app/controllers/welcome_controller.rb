class WelcomeController < ApplicationController
  def index
    @params = params[:name]
  end
end
