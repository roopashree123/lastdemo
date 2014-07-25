require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { brief_description: @product.brief_description, category_name: @product.category_name, description: @product.description, discounts: @product.discounts, list_price: @product.list_price, offer_date: @product.offer_date, product_name: @product.product_name, product_price: @product.product_price, quantity: @product.quantity, user_image: @product.user_image }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { brief_description: @product.brief_description, category_name: @product.category_name, description: @product.description, discounts: @product.discounts, list_price: @product.list_price, offer_date: @product.offer_date, product_name: @product.product_name, product_price: @product.product_price, quantity: @product.quantity, user_image: @product.user_image }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
