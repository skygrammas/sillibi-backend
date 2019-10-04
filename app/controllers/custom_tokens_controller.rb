class CustomTokensController < Doorkeeper::TokensController
  after_action :update_user, only: :create

  def revoke
    token_str = JSON.parse(request.raw_post)['token']
    token = Doorkeeper::AccessToken.by_token(token_str)

    if doorkeeper_token&.resource_owner_id === token.resource_owner_id
      token.revoke
      render json: {}, status: 200
    else
      render json: revocation_error_response, status: :forbidden
    end
  end

  private

  def update_user
    user = User.find_by(email: params[:email])
    user.update!(
        last_logged_in: user.current_logged_in,
        current_logged_in: Time.now,
        last_sign_in_ip: user.current_sign_in_ip,
        current_sign_in_ip: request.ip
    )
  end
end