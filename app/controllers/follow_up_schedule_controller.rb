class FollowUpScheduleController < ApplicationController
    def show
  @follow = Follow.find(params[:id])
end
    def index
       @follow = Follow.all
    end
    def new
      @follow = Follow.new
    end
end
