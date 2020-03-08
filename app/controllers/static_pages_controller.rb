class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @movies = Movie.all
  end
end
