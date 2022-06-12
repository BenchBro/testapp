require "application_system_test_case"

class TestbagsTest < ApplicationSystemTestCase
  setup do
    @testbag = testbags(:one)
  end

  test "visiting the index" do
    visit testbags_url
    assert_selector "h1", text: "Testbags"
  end

  test "should create testbag" do
    visit testbags_url
    click_on "New testbag"

    fill_in "Bagweight", with: @testbag.bagweight
    check "Carry" if @testbag.carry
    fill_in "Maxweight", with: @testbag.maxweight
    fill_in "Minweight", with: @testbag.minweight
    fill_in "Name", with: @testbag.name
    fill_in "Volume", with: @testbag.volume
    click_on "Create Testbag"

    assert_text "Testbag was successfully created"
    click_on "Back"
  end

  test "should update Testbag" do
    visit testbag_url(@testbag)
    click_on "Edit this testbag", match: :first

    fill_in "Bagweight", with: @testbag.bagweight
    check "Carry" if @testbag.carry
    fill_in "Maxweight", with: @testbag.maxweight
    fill_in "Minweight", with: @testbag.minweight
    fill_in "Name", with: @testbag.name
    fill_in "Volume", with: @testbag.volume
    click_on "Update Testbag"

    assert_text "Testbag was successfully updated"
    click_on "Back"
  end

  test "should destroy Testbag" do
    visit testbag_url(@testbag)
    click_on "Destroy this testbag", match: :first

    assert_text "Testbag was successfully destroyed"
  end
end
