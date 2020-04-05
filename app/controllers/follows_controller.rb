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
    def edit
      @follow = Follow.find(params[:id])
    end
    def update
      @follow = Follow.find(params[:id])
      @follow.update(schedule_params)
      redirect_to follows_path
    end
   def destroy
    @follow = Follow.find(params[:id])
      @follow.destroy
      redirect_to follows_path
    end
private 
    def schedule_params
        params.require(:follow).permit(:fever,:cough,:breath,:people)
    end
end
