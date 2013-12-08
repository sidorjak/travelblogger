class PostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  
  def index
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to root_url
    else
      render 'users#new'
    end
  end

  def destroy
  end
  
  def edit
  end
  
  private
    def post_params
      params.require(:post).permit(:content)
    end
    
end