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
      post :create, product: { active: @product.active, category: @product.category, colors_available: @product.colors_available, date_added: @product.date_added, date_updated: @product.date_updated, description: @product.description, id: @product.id, image: @product.image, limit: @product.limit, old_price: @product.old_price, price: @product.price, product: @product.product, product_number: @product.product_number, sale: @product.sale, size: @product.size }
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
    put :update, id: @product, product: { active: @product.active, category: @product.category, colors_available: @product.colors_available, date_added: @product.date_added, date_updated: @product.date_updated, description: @product.description, id: @product.id, image: @product.image, limit: @product.limit, old_price: @product.old_price, price: @product.price, product: @product.product, product_number: @product.product_number, sale: @product.sale, size: @product.size }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
