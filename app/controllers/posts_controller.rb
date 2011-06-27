class PostsController < ApplicationController
  before_filter :load

  def load
    @posts = Post.all
    @post  = Post.new
  end
  
  def index
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_url, notice: 'Successfully created post.'
    else
      render action: :index
    end
  end

  def edit
    @post = Post.find(params[:id])
    render action: :index
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to post_url, notice: 'Successfully updated post.'
    else
      render action: :index
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_url, notice: 'Successfully destroyed post.'
  end
end
