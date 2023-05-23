require "application_system_test_case"

class RansackAliasSearchesTest < ApplicationSystemTestCase
   test "persisting field values between requests" do
     visit projects_path
  
     fill_in "Name contains", with: "Test"
     click_on "Search"

     assert_field "Name contains", with: "Test"
   end
end
