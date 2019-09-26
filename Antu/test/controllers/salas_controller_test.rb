require 'test_helper'

class SalasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sala = salas(:one)
  end

  test "should get index" do
    get salas_url, as: :json
    assert_response :success
  end

  test "should create sala" do
    assert_difference('Sala.count') do
      post salas_url, params: { sala: { descripcion: @sala.descripcion, edad: @sala.edad, nombre: @sala.nombre, profesion: @sala.profesion, profesores: @sala.profesores } }, as: :json
    end

    assert_response 201
  end

  test "should show sala" do
    get sala_url(@sala), as: :json
    assert_response :success
  end

  test "should update sala" do
    patch sala_url(@sala), params: { sala: { descripcion: @sala.descripcion, edad: @sala.edad, nombre: @sala.nombre, profesion: @sala.profesion, profesores: @sala.profesores } }, as: :json
    assert_response 200
  end

  test "should destroy sala" do
    assert_difference('Sala.count', -1) do
      delete sala_url(@sala), as: :json
    end

    assert_response 204
  end
end
