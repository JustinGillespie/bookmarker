require 'test_helper'

class BundlesControllerTest < ActionController::TestCase
  setup do
    @bundle = bundles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bundles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bundle" do
    assert_difference('Bundle.count') do
      post :create, bundle: { name: @bundle.name }
    end

    assert_redirected_to bundle_path(assigns(:bundle))
  end

  test "should show bundle" do
    get :show, id: @bundle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bundle
    assert_response :success
  end

  test "should update bundle" do
    patch :update, id: @bundle, bundle: { name: @bundle.name }
    assert_redirected_to bundle_path(assigns(:bundle))
  end

  test "should destroy bundle" do
    assert_difference('Bundle.count', -1) do
      delete :destroy, id: @bundle
    end

    assert_redirected_to bundles_path
  end
end
