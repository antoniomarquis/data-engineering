require 'test_helper'

class PurchasersControllerTest < ActionController::TestCase
  setup do
    @purchaser = purchasers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchasers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchaser" do
    assert_difference('Purchaser.count') do
      post :create, purchaser: { item_description: @purchaser.item_description, item_price: @purchaser.item_price, merchant_address: @purchaser.merchant_address, merchant_name: @purchaser.merchant_name, name: @purchaser.name, purchase_count: @purchaser.purchase_count }
    end

    assert_redirected_to purchaser_path(assigns(:purchaser))
  end

  test "should show purchaser" do
    get :show, id: @purchaser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchaser
    assert_response :success
  end

  test "should update purchaser" do
    put :update, id: @purchaser, purchaser: { item_description: @purchaser.item_description, item_price: @purchaser.item_price, merchant_address: @purchaser.merchant_address, merchant_name: @purchaser.merchant_name, name: @purchaser.name, purchase_count: @purchaser.purchase_count }
    assert_redirected_to purchaser_path(assigns(:purchaser))
  end

  test "should destroy purchaser" do
    assert_difference('Purchaser.count', -1) do
      delete :destroy, id: @purchaser
    end

    assert_redirected_to purchasers_path
  end
end
