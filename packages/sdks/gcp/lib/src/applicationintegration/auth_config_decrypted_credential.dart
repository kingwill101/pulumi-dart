// ignore_for_file: unused_element, unnecessary_cast

import 'auth_config_decrypted_credential_auth_token.dart';
import 'auth_config_decrypted_credential_jwt.dart';
import 'auth_config_decrypted_credential_oauth2_authorization_code.dart';
import 'auth_config_decrypted_credential_oauth2_client_credentials.dart';
import 'auth_config_decrypted_credential_oidc_token.dart';
import 'auth_config_decrypted_credential_service_account_credentials.dart';
import 'auth_config_decrypted_credential_username_and_password.dart';

class AuthConfigDecryptedCredential {
  /// Auth token credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialAuthToken? authToken;
  /// Credential type associated with auth configs.
  final String credentialType;
  /// JWT credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialJwt? jwt;
  /// OAuth2 authorization code credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2AuthorizationCode? oauth2AuthorizationCode;
  /// OAuth2 client credentials.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOauth2ClientCredentials? oauth2ClientCredentials;
  /// Google OIDC ID Token.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialOidcToken? oidcToken;
  /// Service account credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialServiceAccountCredentials? serviceAccountCredentials;
  /// Username and password credential.
  /// Structure is documented below.
  final AuthConfigDecryptedCredentialUsernameAndPassword? usernameAndPassword;

  /// Creates a new [AuthConfigDecryptedCredential].
  /// [authToken] Auth token credential.
  /// [credentialType] Credential type associated with auth configs.
  /// [jwt] JWT credential.
  /// [oauth2AuthorizationCode] OAuth2 authorization code credential.
  /// [oauth2ClientCredentials] OAuth2 client credentials.
  /// [oidcToken] Google OIDC ID Token.
  /// [serviceAccountCredentials] Service account credential.
  /// [usernameAndPassword] Username and password credential.
  AuthConfigDecryptedCredential({
    this.authToken,
    required this.credentialType,
    this.jwt,
    this.oauth2AuthorizationCode,
    this.oauth2ClientCredentials,
    this.oidcToken,
    this.serviceAccountCredentials,
    this.usernameAndPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': ?authToken == null ? null : authToken!.toMap(),
      'credentialType': credentialType,
      'jwt': ?jwt == null ? null : jwt!.toMap(),
      'oauth2AuthorizationCode': ?oauth2AuthorizationCode == null ? null : oauth2AuthorizationCode!.toMap(),
      'oauth2ClientCredentials': ?oauth2ClientCredentials == null ? null : oauth2ClientCredentials!.toMap(),
      'oidcToken': ?oidcToken == null ? null : oidcToken!.toMap(),
      'serviceAccountCredentials': ?serviceAccountCredentials == null ? null : serviceAccountCredentials!.toMap(),
      'usernameAndPassword': ?usernameAndPassword == null ? null : usernameAndPassword!.toMap(),
    };
  }

  factory AuthConfigDecryptedCredential.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredential(
      authToken: map['authToken'] == null ? null : AuthConfigDecryptedCredentialAuthToken.fromMap((map['authToken'] as Map).cast<String, dynamic>()),
      credentialType: map['credentialType'] as String,
      jwt: map['jwt'] == null ? null : AuthConfigDecryptedCredentialJwt.fromMap((map['jwt'] as Map).cast<String, dynamic>()),
      oauth2AuthorizationCode: map['oauth2AuthorizationCode'] == null ? null : AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap((map['oauth2AuthorizationCode'] as Map).cast<String, dynamic>()),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null ? null : AuthConfigDecryptedCredentialOauth2ClientCredentials.fromMap((map['oauth2ClientCredentials'] as Map).cast<String, dynamic>()),
      oidcToken: map['oidcToken'] == null ? null : AuthConfigDecryptedCredentialOidcToken.fromMap((map['oidcToken'] as Map).cast<String, dynamic>()),
      serviceAccountCredentials: map['serviceAccountCredentials'] == null ? null : AuthConfigDecryptedCredentialServiceAccountCredentials.fromMap((map['serviceAccountCredentials'] as Map).cast<String, dynamic>()),
      usernameAndPassword: map['usernameAndPassword'] == null ? null : AuthConfigDecryptedCredentialUsernameAndPassword.fromMap((map['usernameAndPassword'] as Map).cast<String, dynamic>()),
    );
  }
}

