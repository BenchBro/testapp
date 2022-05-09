require "test_helper"

class PistolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pistol = pistols(:one)
  end

  test "should get index" do
    get pistols_url
    assert_response :success
  end

  test "should get new" do
    get new_pistol_url
    assert_response :success
  end

  test "should create pistol" do
    assert_difference("Pistol.count") do
      post pistols_url, params: { pistol: { accessories: @pistol.accessories, age: @pistol.age, caliber: @pistol.caliber, capacity: @pistol.capacity, comments: @pistol.comments, manufacturer: @pistol.manufacturer, name: @pistol.name } }
    end

    assert_redirected_to pistol_url(Pistol.last)
  end

  test "should show pistol" do
    get pistol_url(@pistol)
    assert_response :success
  end

  test "should get edit" do
    get edit_pistol_url(@pistol)
    assert_response :success
  end

  test "should update pistol" do
    patch pistol_url(@pistol), params: { pistol: { accessories: @pistol.accessories, age: @pistol.age, caliber: @pistol.caliber, capacity: @pistol.capacity, comments: @pistol.comments, manufacturer: @pistol.manufacturer, name: @pistol.name } }
    assert_redirected_to pistol_url(@pistol)
  end

  test "should destroy pistol" do
    assert_difference("Pistol.count", -1) do
      delete pistol_url(@pistol)
    end

    assert_redirected_to pistols_url
  end
end
