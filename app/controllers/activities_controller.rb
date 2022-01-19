class ActivitiesController < ApplicationController
    def index
        render json: Activity.all
    end

    def destroy
        bye_activity = Activity.find_by(id: params[:id])
        if bye_activity
            bye_activity.destroy
            head :no_content
        else
            render json: {"error": "Activity not found"}, status: :not_found
        end
        
    end
end
