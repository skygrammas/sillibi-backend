class CustomTokensController < Doorkeeper::TokensController
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
end