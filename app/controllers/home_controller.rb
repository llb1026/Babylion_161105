class HomeController < ApplicationController

  def write_process
    @post = Post.new
    @post.title = params[:title]
    @post.content = params[:content]
    @post.save
    
    redirect_to '/list'
  end
  
  def list
    @posts = Post.all.order("id desc")
  end
  
  def update
    @update = Post.find(params[:id])
    @update.title = params[:title]
    @update.content = params[:content]
    @update.save
    
    redirect_to '/list'
  end
  
  def update_view
    @update = Post.find(params[:id])
  end
  
  def destroy
    @delete = Post.find(params[:id])
    @delete.destroy
    redirect_to '/list'
  end
end
