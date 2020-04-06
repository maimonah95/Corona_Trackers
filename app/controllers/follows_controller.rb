class FollowsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :show]
    before_action :find_schedule, except: [:index, :new, :create]
       def destroy
    # @follow = Follow.find(params[:id])
      # @follow.destroy
      @follow.delete
      redirect_to follows_path
    end 
        def edit
      @follow = Follow.find(params[:id])
    end
    def update
      # @follow = Follow.find(params[:id])
      @follow.update(schedule_params)
      redirect_to follows_path
    end
   def show
      if @follow.user != current_user
      flash[:notice] = 'Not allowed!'
      redirect_to  follows_path
      # @follow = Follow.find(params[:id])
   end
  end
    def index
      #  @follows = Follow.all
          if user_signed_in? then 
        @follows = current_user.follows.all 
         
        # end
        if current_user.role == "Admin" then
          @follows = Follow.all
        end
         end   
  end
    def new
        @follow = Follow.new
    end
    def create 
     @follow = Follow.new(schedule_params)
     @follow.user = current_user
       if @follow.save
       redirect_to  @follow
        else
            render 'new'
        end
    end


private 
    def find_schedule
      @follow = Follow.find(params[:id])
    end
    def schedule_params
        params.require(:follow).permit(:fever,:cough,:breath,:people)
    end

end
