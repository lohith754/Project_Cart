require "test_helper"

class EstoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estore = estores(:one)
  end

  test "should get index" do
    get estores_url
    assert_response :success
  end

  test "should get new" do
    get new_estore_url
    assert_response :success
  end

  test "should create estore" do
    assert_difference("Estore.count") do
      post estores_url, params: { estore: { brand: @estore.brand, material: @estore.material, name: @estore.name, price: @estore.price } }
    end

    assert_redirected_to estore_url(Estore.last)
  end

  test "should show estore" do
    get estore_url(@estore)
    assert_response :success
  end

  test "should get edit" do
    get edit_estore_url(@estore)
    assert_response :success
  end

  test "should update estore" do
    patch estore_url(@estore), params: { estore: { brand: @estore.brand, material: @estore.material, name: @estore.name, price: @estore.price } }
    assert_redirected_to estore_url(@estore)
  end

  test "should destroy estore" do
    assert_difference("Estore.count", -1) do
      delete estore_url(@estore)
    end

    assert_redirected_to estores_url
  end
end
