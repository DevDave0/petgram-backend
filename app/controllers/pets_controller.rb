class PetsController < ApplicationController

    def index 
        @pets = Pet.all 

        render json: @pets, include: :users, status: :ok
    end 

    def create 
        @pet = Pet.create(pet_params)

        render json: @pet, status: :created
    end 

    private 

    def pet_params 
        params.require(:pet).permit(:name, :pic_url, :description, :animal)
    end 
    
end
