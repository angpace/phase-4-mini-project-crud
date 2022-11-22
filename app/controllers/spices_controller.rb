class SpicesController < ApplicationController

    def index
        render json: Spice.all
    end

    def create
        render json: Spice.create(spice_params), status: :created
    end

    def update
        spice = Spice.find(params[:id])
    if spice 
        spice.update(spice_params)
        render json: spice
    else
        render {"spice not found"}
    end
    end

    def destroy
        spice = Spice.find(params[:id])
        if spice 
            spice.destroy
        else 
            render {"spice not found"}
        end 

    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
