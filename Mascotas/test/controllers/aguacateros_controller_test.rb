require 'test_helper'

class AguacaterosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aguacatero = aguacateros(:one)
  end

  test "should get index" do
    get aguacateros_url
    assert_response :success
  end

  test "should get new" do
    get new_aguacatero_url
    assert_response :success
  end

  test "should create aguacatero" do
    assert_difference('Aguacatero.count') do
      post aguacateros_url, params: { aguacatero: { name: @aguacatero.name, raza1: @aguacatero.raza1, raza2: @aguacatero.raza2, sexo: @aguacatero.sexo } }
    end

    assert_redirected_to aguacatero_url(Aguacatero.last)
  end

  test "should show aguacatero" do
    get aguacatero_url(@aguacatero)
    assert_response :success
  end

  test "should get edit" do
    get edit_aguacatero_url(@aguacatero)
    assert_response :success
  end

  test "should update aguacatero" do
    patch aguacatero_url(@aguacatero), params: { aguacatero: { name: @aguacatero.name, raza1: @aguacatero.raza1, raza2: @aguacatero.raza2, sexo: @aguacatero.sexo } }
    assert_redirected_to aguacatero_url(@aguacatero)
  end

  test "should destroy aguacatero" do
    assert_difference('Aguacatero.count', -1) do
      delete aguacatero_url(@aguacatero)
    end

    assert_redirected_to aguacateros_url
  end
end
