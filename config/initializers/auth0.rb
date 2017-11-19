Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'YOUR_CLIENT_ID',
    'YOUR_CLIENT_SECRET',
    'YOUR_AUTH0_DOMAIN',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://YOUR_AUTH0_DOMAIN/userinfo'
    }
  )
end
