require 'rails_helper'

describe Course, '.create', :type => "request=" do

  it 'creates a course, with an associated teacher ' do
  # Setup
    course = Course.new()
    course.title = "Nuevo Curso"
    course.quota = 30
    course.code = "MMJR"
    student = Person.new()
    student.is_teacher = false
    student.save()

  # Exercise
    course.person_id = 1
    course.save()

  # Verify
    expect(course.teacher.is_teacher).to eq true

  # Teardown is for now mostly handled by RSpec itself
  end

end
