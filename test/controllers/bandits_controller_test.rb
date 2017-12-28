require 'test_helper'

class BanditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bandit = bandits(:one)
  end

  test "should get index" do
    get bandits_url
    assert_response :success
  end

  test "should get new" do
    get new_bandit_url
    assert_response :success
  end

  test "should create bandit" do
    assert_difference('Bandit.count') do
      post bandits_url, params: { bandit: { name: @bandit.name } }
    end

    assert_redirected_to bandit_url(Bandit.last)
  end

  test "should show bandit" do
    get bandit_url(@bandit)
    assert_response :success
  end

  test "should get edit" do
    get edit_bandit_url(@bandit)
    assert_response :success
  end

  test "should update bandit" do
    patch bandit_url(@bandit), params: { bandit: { name: @bandit.name } }
    assert_redirected_to bandit_url(@bandit)
  end

  test "should destroy bandit" do
    assert_difference('Bandit.count', -1) do
      delete bandit_url(@bandit)
    end

    assert_redirected_to bandits_url
  end
end
