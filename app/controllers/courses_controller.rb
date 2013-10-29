class CoursesController < ApplicationController
	def index
		@courses = Course.all
	end
	def show
		@course = Course.find(params[:id])
	end
	def new
		@course = Course.new
	end
	def create
		@course = Course.new(course_params)
		if @course.save
			redirect_to(courses_path, notice: "Course was successfully created.")
		else
			render action: "new"
		end
	end

	def remove_enrollment
		@course = Course.find(params[:course_id])
		@enrollment = Enrollment.new(:course => @course)
	end	

	def destroy_enrollment
		enrollment = Enrollment.find_by(course_id: params[:enrollment][:course_id],
																		 user_id: params[:enrollment][:user_id])
		@course = Course.find(params[:course_id])
		if enrollment.destroy
			redirect_to(course_path(:id => @course.id))
		else
			redirect_to(course_path(:id => @course.id))
		end
	end
	
	private
    def course_params
      params.require(:course).permit(:description, :start_date)
    end
end
