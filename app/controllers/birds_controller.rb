class BirdsController < ApplicationController

    #get
    def index
        render json: Bird.all
    end

    #get/id
    def show
        bird = Bird.find_by(id: params[:id])
        if bird
            render json: bird
        else
            render json: {error: "Birds aren't real"}, status: :not_found
        end
    end

end
