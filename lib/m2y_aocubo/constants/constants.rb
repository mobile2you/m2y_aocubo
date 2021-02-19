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
  VERIFICATION_TOKEN = 'hypercube_usm/v1/oauth/account/verification'
  RESEND_TOKEN = 'hypercube_usm/v1/oauth/account/verification/resend'
  SAFE_KEYS = %w[username password confirm_password email previousPassword proposedPassword confirmPassword proposedPasswordConfirmation confirmationCode document_number]
  RESTRICTED_KEYS = %w[password itoken password_confirmation]

  #datalake
  EVENT_IDENTIFY =  "event_identify"
  EVENT_CD_SSO = "event_cd_sso"

  EVENT_CD_PERFIL = "event_cd_perfil"
  EVENT_CD_CARTAO = "event_cd_cartao"
  EVENT_CD_CONSULTA = "event_cd_consulta"
  EVENT_CD_BOLETO = "event_cd_boleto"
  EVENT_CD_TRANSFERENCIA = "event_cd_transferencia"
  EVENT_CD_COMPRA_CARTAO = "event_cd_compra_cartao"
  EVENT_CD_PAGAMENTO_CONTA = "event_cd_pagamento_conta"
  EVENT_CD_RECARGA_CELULAR = "event_cd_recarga_celular"
  EVENT_CD_RECARGA_BILHETE_UNICO = "event_cd_recarga_bilhete_unico"

  EVENT_CD_SSO_EVENT_KEY = "tipo_evento"
  EVENT_CD_SSO_EVENT_VALUE = "reset_senha"
  EVENT_CD_SSO_PASSWORD_VALUE = "senha_alterada"

  EVENT_CD_PERFIL_EVENT_KEY = "foto_perfil"
  EVENT_CD_PERFIL_EVENT_VALUE = "S"

  EVENT_CD_CARTAO_UNLOCK_EVENT_VALUE = "desbloqueio"
  EVENT_CD_CARTAO_LOCK_EVENT_VALUE = "bloqueio"
  EVENT_CD_CARTAO_PASSWORD_EVENT_VALUE = "senha_alterada"
  EVENT_CD_CARTAO_VIRTUAL_CARD_EVENT_VALUE = "cartao_virtual"
  EVENT_CD_CARTAO_CARD_KEY = "idCartao"

  EVENT_CD_CONSULTA_CONTA_KEY = "idConta"
  EVENT_CD_CONSULTA_EXTRATO_EVENT_VALUE = "extrato"
  EVENT_CD_CONSULTA_COMPROVANTES_EVENT_VALUE = "comprovantes"
  EVENT_CD_CONSULTA_FAQ_KEY = "faq"


  EVENT_CD_TRANSFERENCIA_P2P_EVENT_VALUE = "transf_entre_contas"
  EVENT_CD_TRANSFERENCIA_CONTA_KEY = "idConta_destino"
  EVENT_CD_TRANSFERENCIA_VALOR_KEY = "valor"
  EVENT_CD_TRANSFERENCIA_FAVORITO_KEY = "favorecido_adicionado"

  EVENT_CD_TRANSFERENCIA_TED_EVENT_VALUE = "ted_enviada"
  EVENT_CD_TRANSFERENCIA_BANCO_KEY = "banco"
  EVENT_CD_TRANSFERENCIA_AGENCIA_KEY = "agencia"
  EVENT_CD_TRANSFERENCIA_CONTA_BANCARIA_KEY = "conta"

  EVENT_CD_BOLETO_BILLET_EVENT_VALUE = "emissao"
  EVENT_CD_BOLETO_KEY = "barcode"

  EVENT_CD_RECARGA_CELULAR_OPERADORA_KEY = "operadora"
  EVENT_CD_RECARGA_CELULAR_NUMERO_KEY = "nr_telefone"

  EVENT_CD_RECARGA_BILHETE_UNICO_BILHETE_KEY = "nr_bilhete"

end
