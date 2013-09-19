class BlogsController < ApplicationController
  def index
  	@blogs = Blog.all
  end

  def new
  	@blog = Blog.new
  end

  def create
    @user = User.find(params[:user_id])
    @blog = @user.blogs.create(params[:blog])

  	redirect_to blog_path(@user), notice: 'New blog created.'
  end

  def show
  	@user = User.find(params[:id])
    @blog = User.find(params[:id]).blogs.order("id ASC")
    @posts = Blog.find(params[:id]).posts
  end
end
