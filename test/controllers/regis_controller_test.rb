require "test_helper"

class RegisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regi = regis(:one)
  end

  test "should get index" do
    get regis_url
    assert_response :success
  end

  test "should get new" do
    get new_regi_url
    assert_response :success
  end

  test "should create regi" do
    assert_difference('Regi.count') do
      post regis_url, params: { regi: { age: @regi.age, name: @regi.name } }
    end

    assert_redirected_to regi_url(Regi.last)
  end

  test "should show regi" do
    get regi_url(@regi)
    assert_response :success
  end

  test "should get edit" do
    get edit_regi_url(@regi)
    assert_response :success
  end

  test "should update regi" do
    patch regi_url(@regi), params: { regi: { age: @regi.age, name: @regi.name } }
    assert_redirected_to regi_url(@regi)
  end

  test "should destroy regi" do
    assert_difference('Regi.count', -1) do
      delete regi_url(@regi)
    end

    assert_redirected_to regis_url
  end
end
