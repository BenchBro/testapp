require "application_system_test_case"

class TestcampingsTest < ApplicationSystemTestCase
  setup do
    @testcamping = testcampings(:one)
  end

  test "visiting the index" do
    visit testcampings_url
    assert_selector "h1", text: "Testcampings"
  end

  test "should create testcamping" do
    visit testcampings_url
    click_on "New testcamping"

    check "Carry" if @testcamping.carry
    fill_in "Name", with: @testcamping.name
    fill_in "Volume", with: @testcamping.volume
    fill_in "Weight", with: @testcamping.weight
    click_on "Create Testcamping"

    assert_text "Testcamping was successfully created"
    click_on "Back"
  end

  test "should update Testcamping" do
    visit testcamping_url(@testcamping)
    click_on "Edit this testcamping", match: :first

    check "Carry" if @testcamping.carry
    fill_in "Name", with: @testcamping.name
    fill_in "Volume", with: @testcamping.volume
    fill_in "Weight", with: @testcamping.weight
    click_on "Update Testcamping"

    assert_text "Testcamping was successfully updated"
    click_on "Back"
  end

  test "should destroy Testcamping" do
    visit testcamping_url(@testcamping)
    click_on "Destroy this testcamping", match: :first

    assert_text "Testcamping was successfully destroyed"
  end
end
