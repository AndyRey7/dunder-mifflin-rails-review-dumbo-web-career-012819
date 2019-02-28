class DogsController < ApplicationController
    before_action :get_dog, only: [:show]

    def index
        @dogs = Dog.all
    end

    def show
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end






    private

    def get_dog
        @dog = Dog.find(params[:id])
    end

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end
end
