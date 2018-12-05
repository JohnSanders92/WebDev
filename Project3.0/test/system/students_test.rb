require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit students_url
  #
  #   assert_selector "h1", text: "Student"
  # end
   	 test "student not in search" do
    	visit sections_url
    	fill_in "search", with: "Bob"
    	click_on "Search"
    	refute_selector "td"
  	end
  	
  	test "student in search" do
    	visit courses_url
    	fill_in "search", with: "MyString"
    	click_on "Search"
    	assert_selector "td", text: "MyString"
  	end
end
