class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def index
    @posts = Post.paginate(page: params[:page])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      flash[:success] = 'Post created'
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:info] = 'Please log in first'
        redirect_to login_path
      end
    end
end
