module EnrollmentsHelper
	def eligible_students(course)
		User.students.all(:order => :last_name) - course.users
	end
end