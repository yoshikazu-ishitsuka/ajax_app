class PostsController < ApplicationController
  def index
  @posts = Post.all.order(id: "DESC")
  end

#  def new
#  end

  def create
  Post.create(content: params[:content])
  redirect_to action: :index
  end

  def checded
    post = Post.find(params[;id])
    if post.checded
      post.update(checded: false)
    else
      post.update(checded: true)
    end

    item = Post.find(params[:id])
    render json: { post: item}
  end

end
