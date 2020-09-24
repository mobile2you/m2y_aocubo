module M2yAocubo
  DYNAMIC_INGEST = "hypercube_dataingest/v1/track/dynamic"
  IDENTIFY = "hypercube_dataingest/v1/identify"
  TRACK = "hypercube_dataingest/v1/track"
  CRYPT_CONTEXT = "hypercube_usm/v1/cryptocontext"
  SIGNUP = "hypercube_usm/v1/oauth/signup"
  TOKEN = "hypercube_usm/v1/oauth/signin/token"
  SIGNIN = "hypercube_usm/v1/oauth/signin"
  FORGOT_PASS = "hypercube_usm​/v1​/oauth​/forgotpassword"
  CONFIRM_PASS = "hypercube_usm​/v1​/oauth​/confirmforgotpassword"
  UPDATE_PASS = "hypercube_usm/v1/oauth/changepassword"

  SAFE_KEYS = %w[name username password confirm_password email]
  RESTRICTED_KEYS = %w[password itoken password_confirmation]
end
