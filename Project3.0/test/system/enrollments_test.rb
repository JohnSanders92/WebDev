require "application_system_test_case"

class EnrollmentsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit enrollments_url
  #
  #   assert_selector "h1", text: "Enrollment"
  # end

   	 test "enrollment not in search" do
    	visit sections_url
    	fill_in "search", with: "Bob"
    	click_on "Search"
    	refute_selector "td"
  	end
  	
  	test "enrollment in search" do
    	visit courses_url
    	fill_in "search", with: "MyString"
    	click_on "Search"
    	assert_selector "td", text: "MyString"
  	end
end
