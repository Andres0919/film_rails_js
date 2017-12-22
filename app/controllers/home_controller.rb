class HomeController < ApplicationController
  def index
    @index = Cinema.all
  end
end
