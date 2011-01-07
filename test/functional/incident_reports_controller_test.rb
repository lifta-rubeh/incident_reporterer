require 'test_helper'

class IncidentReportsControllerTest < ActionController::TestCase
  setup do
    @incident_report = incident_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incident_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incident_report" do
    assert_difference('IncidentReport.count') do
      post :create, :incident_report => @incident_report.attributes
    end

    assert_redirected_to incident_report_path(assigns(:incident_report))
  end

  test "should show incident_report" do
    get :show, :id => @incident_report.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @incident_report.to_param
    assert_response :success
  end

  test "should update incident_report" do
    put :update, :id => @incident_report.to_param, :incident_report => @incident_report.attributes
    assert_redirected_to incident_report_path(assigns(:incident_report))
  end

  test "should destroy incident_report" do
    assert_difference('IncidentReport.count', -1) do
      delete :destroy, :id => @incident_report.to_param
    end

    assert_redirected_to incident_reports_path
  end
end
