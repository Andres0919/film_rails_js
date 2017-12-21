require 'test_helper'

class CinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cinema = cinemas(:one)
  end

  test "should get index" do
    get cinemas_url
    assert_response :success
  end

  test "should get new" do
    get new_cinema_url
    assert_response :success
  end

  test "should create cinema" do
    assert_difference('Cinema.count') do
      post cinemas_url, params: { cinema: { address: @cinema.address, name: @cinema.name, phone: @cinema.phone, price_2D_movie: @cinema.price_2D_movie, price_3D_movie: @cinema.price_3D_movie, price_premium_chair: @cinema.price_premium_chair, price_regular_chair: @cinema.price_regular_chair, status: @cinema.status } }
    end

    assert_redirected_to cinema_url(Cinema.last)
  end

  test "should show cinema" do
    get cinema_url(@cinema)
    assert_response :success
  end

  test "should get edit" do
    get edit_cinema_url(@cinema)
    assert_response :success
  end

  test "should update cinema" do
    patch cinema_url(@cinema), params: { cinema: { address: @cinema.address, name: @cinema.name, phone: @cinema.phone, price_2D_movie: @cinema.price_2D_movie, price_3D_movie: @cinema.price_3D_movie, price_premium_chair: @cinema.price_premium_chair, price_regular_chair: @cinema.price_regular_chair, status: @cinema.status } }
    assert_redirected_to cinema_url(@cinema)
  end

  test "should destroy cinema" do
    assert_difference('Cinema.count', -1) do
      delete cinema_url(@cinema)
    end

    assert_redirected_to cinemas_url
  end
end
