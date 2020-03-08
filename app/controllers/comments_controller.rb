class CommentsController < ApplicationController
  before_action :set_movie
 
  def index
    @comments = @movie.comments.all
  end

  def new
    @comment = @movie.comments.new
  end

  def create
    @comment = @movie.comments.create(comment_params)
    if @comment.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end


  def edit
    @comment = @movie.comments.find(params[:id])
  end

  def update
    @comment = @movie.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    @movie.comments.find(params[:id]).destroy
    redirect_to movie_path(@movie)
  end

  def show
   # movie by before_action
   @comment = @movie.comments.find(params[:id])
  end

  private

  def set_user
    @user = current_user
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def comment_params
    params.require(:comment).permit(:body).merge(user_id: current_user.id)
  end

end