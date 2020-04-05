class FollowUpScheduleController < ApplicationController
    def index
       @follow = Follow.all
	end
end
