class PostsController < ApplicationController

    def index 
        @posts = Post.all 

        render json: @posts, :include => [:users], status: :ok
    end 

    def create 
        @post = Post.create(post_params)

        render json: @post, status: :created
    end 

    private 

    def post_params 
        params.require(:post).permit(:pic_url, :caption, :pet_id, :user_id)
    end 
end
