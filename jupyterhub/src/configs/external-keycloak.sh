KUBERNETES_SERVER_URL="https://$KUBERNETES_SERVICE_HOST:$KUBERNETES_SERVICE_PORT"
OAUTH_METADATA_URL="$KUBERNETES_SERVER_URL/.well-known/oauth-authorization-server"
export OAUTH_AUTHORIZATION_ENDPOINT=`curl -ks $OAUTH_METADATA_URL | jq -r '.authorization_endpoint'`

export OAUTH2_TOKEN_URL="$KEYCLOAK_AUTH_URL/realms/$KEYCLOAK_REALM/protocol/openid-connect/token"
export OAUTH2_AUTHORIZE_URL="$KEYCLOAK_AUTH_URL/realms/$KEYCLOAK_REALM/protocol/openid-connect/auth"
export OAUTH2_USERDATA_URL="$KEYCLOAK_AUTH_URL/realms/$KEYCLOAK_REALM/protocol/openid-connect/userinfo"

export OAUTH2_TLS_VERIFY="0"
export OAUTH_TLS_VERIFY="0"

export OAUTH2_USERNAME_KEY="preferred_username"
