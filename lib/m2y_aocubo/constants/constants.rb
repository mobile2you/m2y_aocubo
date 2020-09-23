module M2yAocubo
  DYNAMIC_INGEST = "hypercube_dataingest/v1/track/dynamic"
  IDENTIFY = "hypercube_dataingest/v1/identify"
  TRACK = "hypercube_dataingest/v1/track"
  CRYPT_CONTEXT = "hypercube_usm/v1/cryptocontext"
  SIGNUP = "hypercube_usm/v1/oauth/signup"
  SAFE_KEYS = %w[name username password confirm_password email]
  RESTRICTED_KEYS = %w[password itoken password_confirmation]
end
