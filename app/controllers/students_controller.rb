class StudentsController < ApplicationController
  def index
    @students = User.students
  end

  def show
    @student = User.students.find(params[:id])
  end

end
