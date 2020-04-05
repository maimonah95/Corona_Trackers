class FollowsController < ApplicationController
       def index
       @follows = Follow.all
    end
    def show
  @follow = Follow.find(params[:id])
   end
 
    def new
        @follow = Follow.new
    end
    def create 
     @follow = Follow.new(schedule_params)
       if @follow.save
       redirect_to  follows_path
        else
            render 'new'
        end
    end
private 
    def schedule_params
        params.require(:follow).permit(:fever,:cough,:breath,:people)
    end
end
