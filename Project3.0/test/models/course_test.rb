require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   test "course_is_valid" do
   	assert Course.new(course_id: 123, credit_hours: 4, course_name: "Course A", department: "A").valid?, "Course is not valid"
   end
end
