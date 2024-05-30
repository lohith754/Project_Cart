require "application_system_test_case"

class EstoresTest < ApplicationSystemTestCase
  setup do
    @estore = estores(:one)
  end

  test "visiting the index" do
    visit estores_url
    assert_selector "h1", text: "Estores"
  end

  test "should create estore" do
    visit estores_url
    click_on "New estore"

    fill_in "Brand", with: @estore.brand
    fill_in "Material", with: @estore.material
    fill_in "Name", with: @estore.name
    fill_in "Price", with: @estore.price
    click_on "Create Estore"

    assert_text "Estore was successfully created"
    click_on "Back"
  end

  test "should update Estore" do
    visit estore_url(@estore)
    click_on "Edit this estore", match: :first

    fill_in "Brand", with: @estore.brand
    fill_in "Material", with: @estore.material
    fill_in "Name", with: @estore.name
    fill_in "Price", with: @estore.price
    click_on "Update Estore"

    assert_text "Estore was successfully updated"
    click_on "Back"
  end

  test "should destroy Estore" do
    visit estore_url(@estore)
    click_on "Destroy this estore", match: :first

    assert_text "Estore was successfully destroyed"
  end
end
