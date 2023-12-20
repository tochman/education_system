class CoursesController < ApplicationController
  def show
    render json: { message: 'You are here!' }
  end
end
