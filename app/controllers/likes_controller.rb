class LikesController < ApplicationController

    def index 
        @likes = Like.all 

        render json: @likes
    end 

    def create 
        @like = Like.new 
        @like.like = params[:like]
        @like.user_id = params[:user_id]
        @like.post_id = params[:post_id]
        @like.save

        render json: @like, status: :created
    end 

    def destroy 
        @like = Like.find_by(id: params[:id])
        if @like
            @like.destroy
            render json: { messages: ["like was deleted!"] }, status: :ok
        else
            render json: { errors: ['like not found.'] }, status: :not_found
        end
    end 
end
