class MessagesController < ApplicationController
  def new
    @blog = Blog.find(params[:blog_id])
  	@post = Post.find(params[:post_id])
  	@message = Message.new
  end

  def create
  	@post = Post.find(params[:post_id])
  	@message = @post.messages.create(params[:message])

  	redirect_to blog_post_path(@post)
  end


  def show
    @user = User.find(params[:id])
    @blogs = User.find(params[:id]).blogs.order("id ASC")
    @posts = Blog.find(params[:id]).posts.all	
    @messages = Post.find(params[:id]).messages.all
  end
end