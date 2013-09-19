class PostsController < ApplicationController
	def new
		@blog = Blog.find(params[:blog_id])
		@post = Post.new
	end

	def create
    	@blog = Blog.find(params[:blog_id])
    	@post = @blog.posts.create(params[:post])
    
    	redirect_to blog_path(@blog)
   	end

   	def show
    @blog = Blog.find(params[:blog_id])
    @post = Post.find(params[:id])
    @message = Message.new
    @messages = @post.messages.order("created_at DESC")
	end
end