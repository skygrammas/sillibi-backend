class UsersController < ActiveRecordApi::Rest::Controller
  before_action :doorkeeper_authorize!, except: :create

  def index
    render json: current_resource_owner
  end

  def create
    if model_klass.find_by(email: params[:email])
      render json: {error: 'Account already exists'}, status: :unprocessable_entity
      return
    end
    good_params = modifiable_params
    good_params[:password] = good_params[:password_digest]
    good_params.delete('password_digest')
    @model = model_klass.new(good_params)
    super
  end

  private

  def current_resource_owner
    User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end