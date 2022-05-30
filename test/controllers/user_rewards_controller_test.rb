require "test_helper"

class UserRewardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_reward = user_rewards(:one)
  end

  test "should get index" do
    get user_rewards_url, as: :json
    assert_response :success
  end

  test "should create user_reward" do
    assert_difference("UserReward.count") do
      post user_rewards_url, params: { user_reward: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show user_reward" do
    get user_reward_url(@user_reward), as: :json
    assert_response :success
  end

  test "should update user_reward" do
    patch user_reward_url(@user_reward), params: { user_reward: {  } }, as: :json
    assert_response :success
  end

  test "should destroy user_reward" do
    assert_difference("UserReward.count", -1) do
      delete user_reward_url(@user_reward), as: :json
    end

    assert_response :no_content
  end
end
