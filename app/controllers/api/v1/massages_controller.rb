# app/controllers/api/massages_controller.rb
module Api
  class Api::V1::MassagesController < ApplicationController
    def index
      @greeting = Message.order('RANDOM()').first
      render json: @greeting
    end
  end
end
