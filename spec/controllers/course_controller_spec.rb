require 'rails_helper'

describe Course, '.create', :type => "request=" do
  let(:new_course) {Course.new :title => "New", :quota => 30, :code => "N"}
  let(:new_teacher) {Person.new :is_teacher => false}
  it 'creates a course with a designated teacher' do

    new_course.teacher = new_teacher

    expect(new_course.teacher.is_teacher).to eq true

  end

end
