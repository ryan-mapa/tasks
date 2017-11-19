Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'lvWtx57X0Yk5O6SOu520B29WNyHmDL3N',
    'Du_vVpDYWNOTBTxVPRXkd7z3Pi0H-0GwHHfWx_YXzmtnV4rj-989KdtwYbgVC8sP',
    'task.auth0.com',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://task.auth0.com/userinfo'
    }
  )
end
