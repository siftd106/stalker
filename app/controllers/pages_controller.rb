class PagesController < ApplicationController

  def index
    @students = User.students
    @courses = Course.all
  end

end
