class CoursesController < ApplicationController
  def index
  	@search_term = params[:looking_for] || 'Math'
  	@courses = Coursera.for(@search_term)
  end
end


