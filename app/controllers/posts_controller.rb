class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @post.save
  end

  def create
    @post = Post.create(title: params[:title], description: params[:description])
    #code
    redirect_to posts_path

  end

  # add create method here
end
