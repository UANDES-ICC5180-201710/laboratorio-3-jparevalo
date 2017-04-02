require 'rails_helper'

describe Enrollment, '.create', :type => "request=" do

  it 'creates a new enrollment' do
  # Setup
    course = Course.new()
    course.title = "Nuevo Curso"
    course.quota = 1
    course.code = "MMJR"
    student = Person.new()
    student2 = Person.new()
    course.save()



  # Exercise
      enrollment1 = Enrollment.new()
      enrollment1.student = student
      enrollment1.course = course
      enrollment1.save()
      course.enrollments.append(enrollment1)
      enrollment2 = Enrollment.new()
      enrollment2.student = student2
      enrollment2.course = course
      enrollment2.save()
      course.enrollments.append(enrollment2)
      course.save()


  # Verify
    expect(course.enrollments.length).to be <= course.quota

  # Teardown is for now mostly handled by RSpec itself
  end

end
