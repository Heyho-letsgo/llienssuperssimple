require 'test_helper'

class AgencesControllerTest < ActionController::TestCase
  setup do
    @agence = agences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agence" do
    assert_difference('Agence.count') do
      post :create, agence: { nom: @agence.nom, principalgroupe_id: @agence.principalgroupe_id, sousgroupe_id: @agence.sousgroupe_id }
    end

    assert_redirected_to agence_path(assigns(:agence))
  end

  test "should show agence" do
    get :show, id: @agence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agence
    assert_response :success
  end

  test "should update agence" do
    patch :update, id: @agence, agence: { nom: @agence.nom, principalgroupe_id: @agence.principalgroupe_id, sousgroupe_id: @agence.sousgroupe_id }
    assert_redirected_to agence_path(assigns(:agence))
  end

  test "should destroy agence" do
    assert_difference('Agence.count', -1) do
      delete :destroy, id: @agence
    end

    assert_redirected_to agences_path
  end
end
