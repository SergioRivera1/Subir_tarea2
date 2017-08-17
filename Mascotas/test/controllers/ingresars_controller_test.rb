require 'test_helper'

class IngresarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingresar = ingresars(:one)
  end

  test "should get index" do
    get ingresars_url
    assert_response :success
  end

  test "should get new" do
    get new_ingresar_url
    assert_response :success
  end

  test "should create ingresar" do
    assert_difference('Ingresar.count') do
      post ingresars_url, params: { ingresar: { Mascota: @ingresar.Mascota, Nombre: @ingresar.Nombre, Raza: @ingresar.Raza, Sexo: @ingresar.Sexo } }
    end

    assert_redirected_to ingresar_url(Ingresar.last)
  end

  test "should show ingresar" do
    get ingresar_url(@ingresar)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingresar_url(@ingresar)
    assert_response :success
  end

  test "should update ingresar" do
    patch ingresar_url(@ingresar), params: { ingresar: { Mascota: @ingresar.Mascota, Nombre: @ingresar.Nombre, Raza: @ingresar.Raza, Sexo: @ingresar.Sexo } }
    assert_redirected_to ingresar_url(@ingresar)
  end

  test "should destroy ingresar" do
    assert_difference('Ingresar.count', -1) do
      delete ingresar_url(@ingresar)
    end

    assert_redirected_to ingresars_url
  end
end
