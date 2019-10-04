class AssignmentsController < ActiveRecordApi::Rest::Controller
  before_action :doorkeeper_authorize!

  def index
    @models_full_results = current_resource_owner.assignments.limit(100) unless params[:course_id]
    super
  end

  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end