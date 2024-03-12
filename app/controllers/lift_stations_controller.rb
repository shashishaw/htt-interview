class LiftStationsController < ApplicationController
    def show
        @lift_station = LiftStation.find(params[:id])
    end
end
