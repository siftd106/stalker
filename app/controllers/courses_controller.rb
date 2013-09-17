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
	
	private
    def course_params
      params.require(:course).permit(:description, :start_date)
    end
end
