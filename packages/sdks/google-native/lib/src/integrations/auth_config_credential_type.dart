/// Credential type of the encrypted credential.
enum AuthConfigCredentialType {
  credentialTypeUnspecified("CREDENTIAL_TYPE_UNSPECIFIED"),
  usernameAndPassword("USERNAME_AND_PASSWORD"),
  apiKey("API_KEY"),
  oauth2AuthorizationCode("OAUTH2_AUTHORIZATION_CODE"),
  oauth2Implicit("OAUTH2_IMPLICIT"),
  oauth2ClientCredentials("OAUTH2_CLIENT_CREDENTIALS"),
  oauth2ResourceOwnerCredentials("OAUTH2_RESOURCE_OWNER_CREDENTIALS"),
  jwt("JWT"),
  authToken("AUTH_TOKEN"),
  serviceAccount("SERVICE_ACCOUNT"),
  clientCertificateOnly("CLIENT_CERTIFICATE_ONLY"),
  oidcToken("OIDC_TOKEN");

  const AuthConfigCredentialType(this.wireValue);
  final String wireValue;

  static AuthConfigCredentialType fromValue(String value) {
    for (final item in AuthConfigCredentialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthConfigCredentialType value: $value');
  }
}

