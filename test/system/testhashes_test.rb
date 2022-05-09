require "application_system_test_case"

class TesthashesTest < ApplicationSystemTestCase
  setup do
    @testhash = testhashes(:one)
  end

  test "visiting the index" do
    visit testhashes_url
    assert_selector "h1", text: "Testhashes"
  end

  test "should create testhash" do
    visit testhashes_url
    click_on "New testhash"

    fill_in "String", with: @testhash.string
    fill_in "Test1", with: @testhash.test1
    fill_in "Test2", with: @testhash.test2
    fill_in "Test3", with: @testhash.test3
    fill_in "Test4", with: @testhash.test4
    fill_in "Test5", with: @testhash.test5
    click_on "Create Testhash"

    assert_text "Testhash was successfully created"
    click_on "Back"
  end

  test "should update Testhash" do
    visit testhash_url(@testhash)
    click_on "Edit this testhash", match: :first

    fill_in "String", with: @testhash.string
    fill_in "Test1", with: @testhash.test1
    fill_in "Test2", with: @testhash.test2
    fill_in "Test3", with: @testhash.test3
    fill_in "Test4", with: @testhash.test4
    fill_in "Test5", with: @testhash.test5
    click_on "Update Testhash"

    assert_text "Testhash was successfully updated"
    click_on "Back"
  end

  test "should destroy Testhash" do
    visit testhash_url(@testhash)
    click_on "Destroy this testhash", match: :first

    assert_text "Testhash was successfully destroyed"
  end
end
