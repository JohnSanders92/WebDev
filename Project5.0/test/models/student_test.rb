require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "student_is_valid" do
  	assert Student.new(name: "John Smith", student_id: 123, email: "Jsmith@email.com").valid?, "Student is not valid"
  end
end
