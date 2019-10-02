class CoursesController < ActiveRecordApi::Rest::Controller
  before_action :doorkeeper_authorize!, except: [:index, :show]
end