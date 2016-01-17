class PostsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create]
  
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  
  def new
    @post = current_user.posts.new
  end
  
  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = "Post added"
      redirect_to posts_path
    else
      render :new
    end
  end
  
  private
  
    def signed_in_user
      redirect_to login_url unless current_user
    end
    
    def post_params
      params.require(:post).permit(:body, :user_id)
    end
end
