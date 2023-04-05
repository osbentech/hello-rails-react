# app/controllers/api/massages_controller.rb
module Api
  class Api::V1::MassagesController < ApplicationController
    def random_massage
      @greeting = Message.order('RANDOM()').first
      render json: { message: @greeting.message }
    end
  end
end
