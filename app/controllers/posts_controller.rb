class PostsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    @post = current_user.posts.build post_params
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :published)
  end
end
