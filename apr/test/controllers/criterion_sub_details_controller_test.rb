require 'test_helper'

class CriterionSubDetailsControllerTest < ActionController::TestCase
  setup do
    @criterion_sub_detail = criterion_sub_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:criterion_sub_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create criterion_sub_detail" do
    assert_difference('CriterionSubDetail.count') do
      post :create, criterion_sub_detail: { action_item: @criterion_sub_detail.action_item, associated_tasks: @criterion_sub_detail.associated_tasks, cost_amt: @criterion_sub_detail.cost_amt, criterion_detail_id: @criterion_sub_detail.criterion_detail_id, current_status: @criterion_sub_detail.current_status, individuals_resp: @criterion_sub_detail.individuals_resp, other_res_items: @criterion_sub_detail.other_res_items, proj_start_date: @criterion_sub_detail.proj_start_date, source_of_funding: @criterion_sub_detail.source_of_funding, target_comp_date: @criterion_sub_detail.target_comp_date }
    end

    assert_redirected_to criterion_sub_detail_path(assigns(:criterion_sub_detail))
  end

  test "should show criterion_sub_detail" do
    get :show, id: @criterion_sub_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @criterion_sub_detail
    assert_response :success
  end

  test "should update criterion_sub_detail" do
    patch :update, id: @criterion_sub_detail, criterion_sub_detail: { action_item: @criterion_sub_detail.action_item, associated_tasks: @criterion_sub_detail.associated_tasks, cost_amt: @criterion_sub_detail.cost_amt, criterion_detail_id: @criterion_sub_detail.criterion_detail_id, current_status: @criterion_sub_detail.current_status, individuals_resp: @criterion_sub_detail.individuals_resp, other_res_items: @criterion_sub_detail.other_res_items, proj_start_date: @criterion_sub_detail.proj_start_date, source_of_funding: @criterion_sub_detail.source_of_funding, target_comp_date: @criterion_sub_detail.target_comp_date }
    assert_redirected_to criterion_sub_detail_path(assigns(:criterion_sub_detail))
  end

  test "should destroy criterion_sub_detail" do
    assert_difference('CriterionSubDetail.count', -1) do
      delete :destroy, id: @criterion_sub_detail
    end

    assert_redirected_to criterion_sub_details_path
  end
end
