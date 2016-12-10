require 'test_helper'

class ServiceDatesControllerTest < ActionController::TestCase
  setup do
    @service_date = service_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_date" do
    assert_difference('ServiceDate.count') do
      post :create, service_date: { date: @service_date.date, qty_avail: @service_date.qty_avail }
    end

    assert_redirected_to service_date_path(assigns(:service_date))
  end

  test "should show service_date" do
    get :show, id: @service_date
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_date
    assert_response :success
  end

  test "should update service_date" do
    patch :update, id: @service_date, service_date: { date: @service_date.date, qty_avail: @service_date.qty_avail }
    assert_redirected_to service_date_path(assigns(:service_date))
  end

  test "should destroy service_date" do
    assert_difference('ServiceDate.count', -1) do
      delete :destroy, id: @service_date
    end

    assert_redirected_to service_dates_path
  end
end
