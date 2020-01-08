require 'test_helper'

class MuseesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musee = musees(:one)
  end

  test "should get index" do
    get musees_url
    assert_response :success
  end

  test "should get new" do
    get new_musee_url
    assert_response :success
  end

  test "should create musee" do
    assert_difference('Musee.count') do
      post musees_url, params: { musee: { Auteur: @musee.Auteur, Date: @musee.Date, Description: @musee.Description, Dimensions: @musee.Dimensions, Titre: @musee.Titre, Œuvre: @musee.Œuvre } }
    end

    assert_redirected_to musee_url(Musee.last)
  end

  test "should show musee" do
    get musee_url(@musee)
    assert_response :success
  end

  test "should get edit" do
    get edit_musee_url(@musee)
    assert_response :success
  end

  test "should update musee" do
    patch musee_url(@musee), params: { musee: { Auteur: @musee.Auteur, Date: @musee.Date, Description: @musee.Description, Dimensions: @musee.Dimensions, Titre: @musee.Titre, Œuvre: @musee.Œuvre } }
    assert_redirected_to musee_url(@musee)
  end

  test "should destroy musee" do
    assert_difference('Musee.count', -1) do
      delete musee_url(@musee)
    end

    assert_redirected_to musees_url
  end
end
