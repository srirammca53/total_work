class UpdatesController < ApplicationController

 def index
    @post = Post.find(params[:post_id])
    @update = @post.updates.create(params[:update])
    redirect_to post_path(@post)
  end
end
