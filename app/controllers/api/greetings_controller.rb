class Api::GreetingsController < ApplicationController
    def random
      greeting = Greeting.order("RANDOM()").first
    if greeting
      render json: { message: greeting.message }
    else
      render json: { error: "No greetings found" }, status: :not_found
    end
  end
end

