class UserPetsController < ApplicationController

    def index 
        @user_pets = UserPet.all 

        render json: @user_pets
    end 
end
