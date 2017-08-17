require 'test_helper'

class AstrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @astro = astros(:one)
  end

  test "should get index" do
    get astros_url
    assert_response :success
  end

  test "should get new" do
    get new_astro_url
    assert_response :success
  end

  test "should create astro" do
    assert_difference('Astro.count') do
      post astros_url, params: { astro: { descripcion: @astro.descripcion, distancia: @astro.distancia, fecha: @astro.fecha, nombre: @astro.nombre, tipo_id: @astro.tipo_id } }
    end

    assert_redirected_to astro_url(Astro.last)
  end

  test "should show astro" do
    get astro_url(@astro)
    assert_response :success
  end

  test "should get edit" do
    get edit_astro_url(@astro)
    assert_response :success
  end

  test "should update astro" do
    patch astro_url(@astro), params: { astro: { descripcion: @astro.descripcion, distancia: @astro.distancia, fecha: @astro.fecha, nombre: @astro.nombre, tipo_id: @astro.tipo_id } }
    assert_redirected_to astro_url(@astro)
  end

  test "should destroy astro" do
    assert_difference('Astro.count', -1) do
      delete astro_url(@astro)
    end

    assert_redirected_to astros_url
  end
end
