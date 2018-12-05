require "application_system_test_case"

class SectionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit sections_url
  #
  #   assert_selector "h1", text: "Section"
  # end
 	 test "semester not in search" do
    	visit sections_url
    	fill_in "search", with: "summer"
    	click_on "Search"
    	refute_selector "td"
  	end

	test "semester in search" do
    	visit sections_url
    	fill_in "search", with: "MyString"
    	click_on "Search"
    	assert_selector "td", text: "MyString"
  	end
end
