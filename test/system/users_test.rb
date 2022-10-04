require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    check "Active" if @user.active
    fill_in "Company", with: @user.company_id
    fill_in "Email", with: @user.email
    fill_in "End date", with: @user.end_date
    fill_in "First name", with: @user.first_name
    fill_in "Image", with: @user.image_id
    fill_in "Last name", with: @user.last_name
    fill_in "Monthly charge", with: @user.monthly_charge
    fill_in "Role", with: @user.role_id
    fill_in "Start date", with: @user.start_date
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    check "Active" if @user.active
    fill_in "Company", with: @user.company_id
    fill_in "Email", with: @user.email
    fill_in "End date", with: @user.end_date
    fill_in "First name", with: @user.first_name
    fill_in "Image", with: @user.image_id
    fill_in "Last name", with: @user.last_name
    fill_in "Monthly charge", with: @user.monthly_charge
    fill_in "Role", with: @user.role_id
    fill_in "Start date", with: @user.start_date
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
