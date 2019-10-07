class CoursesController < ActiveRecordApi::Rest::Controller
  before_action :doorkeeper_authorize!
end