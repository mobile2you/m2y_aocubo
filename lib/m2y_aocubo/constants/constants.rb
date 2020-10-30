module M2yAocubo
  DYNAMIC_INGEST = 'hypercube_dataingest/v1/track/dynamic'
  IDENTIFY = 'hypercube_dataingest/v1/identify'
  TRACK = 'hypercube_dataingest/v1/track'
  CRYPT_CONTEXT = 'hypercube_usm/v1/cryptocontext'
  SIGNUP = 'hypercube_usm/v1/oauth/signup'
  TOKEN = 'hypercube_usm/v1/oauth/signin/token'
  SIGNIN = 'hypercube_usm/v1/oauth/signin'
  UPDATE_PASS = 'hypercube_usm/v1/oauth/changepassword'
  CONFIRM_PASS = 'hypercube_usm/v1/oauth/confirmforgotpassword'
  FORGOT_PASS = 'hypercube_usm/v1/oauth/forgotpassword'
  ACCESS_TOKEN = 'hypercube_usm/v1/oauth/accesstoken'
  SAFE_KEYS = %w[name username password confirm_password email previousPassword proposedPassword confirmPassword proposedPasswordConfirmation]
  RESTRICTED_KEYS = %w[password itoken password_confirmation]
end
