require "application_system_test_case"

class UserRegionsTest < ApplicationSystemTestCase
  setup do
    @user_region = user_regions(:one)
  end

  test "visiting the index" do
    visit user_regions_url
    assert_selector "h1", text: "User regions"
  end

  test "should create user region" do
    visit user_regions_url
    click_on "New user region"

    fill_in "Region", with: @user_region.region_id
    fill_in "User", with: @user_region.user_id
    click_on "Create User region"

    assert_text "User region was successfully created"
    click_on "Back"
  end

  test "should update User region" do
    visit user_region_url(@user_region)
    click_on "Edit this user region", match: :first

    fill_in "Region", with: @user_region.region_id
    fill_in "User", with: @user_region.user_id
    click_on "Update User region"

    assert_text "User region was successfully updated"
    click_on "Back"
  end

  test "should destroy User region" do
    visit user_region_url(@user_region)
    click_on "Destroy this user region", match: :first

    assert_text "User region was successfully destroyed"
  end
end
