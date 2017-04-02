require 'rails_helper'

describe Enrollment, '.create', :type => "request=" do

  let(:new_course) {Course.new :title => "New", :quota => 1, :code => "N"}
  let(:new_student_1) {Person.new :is_teacher => false}
  let(:new_student_2) {Person.new :is_teacher => false}
  let(:enrollment1) {Enrollment.new :student => new_student_1, :course => new_course}
  let(:enrollment2) {Enrollment.new :student => new_student_2, :course => new_course}
  it 'creates a new enrollment' do
      new_course.enrollments.append(enrollment1)
      new_course.enrollments.append(enrollment2)

      expect(new_course.enrollments.length).to be <= new_course.quota

  end
end
