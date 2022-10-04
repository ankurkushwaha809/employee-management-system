require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "visiting the index" do
    visit companies_url
    assert_selector "h1", text: "Companies"
  end

  test "should create company" do
    visit companies_url
    click_on "New company"

    check "Active" if @company.active
    fill_in "City", with: @company.city_id
    fill_in "Country", with: @company.country_id
    fill_in "Name", with: @company.name
    fill_in "Postcode", with: @company.postcode
    fill_in "Start date", with: @company.start_date
    fill_in "State", with: @company.state_id
    click_on "Create Company"

    assert_text "Company was successfully created"
    click_on "Back"
  end

  test "should update Company" do
    visit company_url(@company)
    click_on "Edit this company", match: :first

    check "Active" if @company.active
    fill_in "City", with: @company.city_id
    fill_in "Country", with: @company.country_id
    fill_in "Name", with: @company.name
    fill_in "Postcode", with: @company.postcode
    fill_in "Start date", with: @company.start_date
    fill_in "State", with: @company.state_id
    click_on "Update Company"

    assert_text "Company was successfully updated"
    click_on "Back"
  end

  test "should destroy Company" do
    visit company_url(@company)
    click_on "Destroy this company", match: :first

    assert_text "Company was successfully destroyed"
  end
end
