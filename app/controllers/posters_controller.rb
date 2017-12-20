class PostersController < ApplicationController

  def poster_params
    params.require(:movie).permit(:content, :label, :release_date, :user_id,)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @poster=Poster.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @posters = Poster.all
  end

  def new
    # default: render 'new' template
  end

  def create
    @poster = Poster.create!(poster_params)
    flash[:notice] = "帖子成功发出！."
    redirect_to posters_path
  end

  def edit
    @poster = Poster.find params[:id]
  end

  def update
    @poster = Poster.find params[:id]
    @poster.update_attributes!(poster_params)
    flash[:notice] = "帖子成功更新!."
    redirect_to poster_path(@poster)
  end

  def destroy
    @poster = Poster.find(params[:id])
    @poster.destroy
    flash[:notice] = "帖子已删除!"
    redirect_to poster_path
  end

end