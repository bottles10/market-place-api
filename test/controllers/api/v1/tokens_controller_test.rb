require "test_helper"

class Api::V1::TokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test 'should get JWT token for valid email/password' do
    post api_v1_tokens_url, params: { user: { email: @user.email, password: 'g00d_pa$$'} }, as: :json

    assert_response :success

    json_response = JSON.parse(response.body)
    assert_not_nil json_response['token']
  end

  test 'should not get JWT token for invalid email/password' do
    post api_v1_tokens_url, params: { user: { email: @user.email, password: 'b@b_pa$$'} }, as: :json
    
    assert_response :unauthorized 
  end
end
