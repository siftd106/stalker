class EnrollmentsController < ApplicationController

	def new
		@course = Course.find(params[:course_id])
		@enrollment = Enrollment.new(:course => @course)
	end

	def create
		@enrollment = Enrollment.new(enrollment_params)
		@course = Course.find(@enrollment.course_id)
		if @enrollment.save
			redirect_to(course_path(:id => @course.id))
		else
			render action: "new"
		end
	end

	private
	def enrollment_params
		params.require(:enrollment).permit(:user_id, :course_id)
	end
end