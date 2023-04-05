require 'test_helper'

class Api::V1::MassagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_massage = api_v1_massages(:one)
  end

  test 'should get index' do
    get api_v1_massages_url, as: :json
    assert_response :success
  end

  test 'should create api_v1_massage' do
    assert_difference('Api::V1::Massage.count') do
      post api_v1_massages_url, params: { api_v1_massage: {} }, as: :json
    end

    assert_response :created
  end

  test 'should show api_v1_massage' do
    get api_v1_massage_url(@api_v1_massage), as: :json
    assert_response :success
  end

  test 'should update api_v1_massage' do
    patch api_v1_massage_url(@api_v1_massage), params: { api_v1_massage: {} }, as: :json
    assert_response :success
  end

  test 'should destroy api_v1_massage' do
    assert_difference('Api::V1::Massage.count', -1) do
      delete api_v1_massage_url(@api_v1_massage), as: :json
    end

    assert_response :no_content
  end
end
