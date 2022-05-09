require "application_system_test_case"

class FirearmsTest < ApplicationSystemTestCase
  setup do
    @firearm = firearms(:one)
  end

  test "visiting the index" do
    visit firearms_url
    assert_selector "h1", text: "Firearms"
  end

  test "should create firearm" do
    visit firearms_url
    click_on "New firearm"

    fill_in "Accessories", with: @firearm.accessories
    fill_in "Age", with: @firearm.age
    fill_in "Caliber", with: @firearm.caliber
    fill_in "Capacity", with: @firearm.capacity
    fill_in "Comments", with: @firearm.comments
    fill_in "Manufacturer", with: @firearm.manufacturer
    fill_in "Name", with: @firearm.name
    click_on "Create Firearm"

    assert_text "Firearm was successfully created"
    click_on "Back"
  end

  test "should update Firearm" do
    visit firearm_url(@firearm)
    click_on "Edit this firearm", match: :first

    fill_in "Accessories", with: @firearm.accessories
    fill_in "Age", with: @firearm.age
    fill_in "Caliber", with: @firearm.caliber
    fill_in "Capacity", with: @firearm.capacity
    fill_in "Comments", with: @firearm.comments
    fill_in "Manufacturer", with: @firearm.manufacturer
    fill_in "Name", with: @firearm.name
    click_on "Update Firearm"

    assert_text "Firearm was successfully updated"
    click_on "Back"
  end

  test "should destroy Firearm" do
    visit firearm_url(@firearm)
    click_on "Destroy this firearm", match: :first

    assert_text "Firearm was successfully destroyed"
  end
end
