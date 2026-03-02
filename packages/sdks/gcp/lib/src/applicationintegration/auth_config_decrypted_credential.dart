// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<AuthConfigDecryptedCredentialAuthToken>? authToken;
  /// Credential type associated with auth configs.
  final pulumi.Input<String> credentialType;
  /// JWT credential.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialJwt>? jwt;
  /// OAuth2 authorization code credential.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2AuthorizationCode>? oauth2AuthorizationCode;
  /// OAuth2 client credentials.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOauth2ClientCredentials>? oauth2ClientCredentials;
  /// Google OIDC ID Token.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialOidcToken>? oidcToken;
  /// Service account credential.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialServiceAccountCredentials>? serviceAccountCredentials;
  /// Username and password credential.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredentialUsernameAndPassword>? usernameAndPassword;

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
      'authToken': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialAuthToken, Map<String, dynamic>>(authToken, (value) => value.toMap()),
      'credentialType': credentialType,
      'jwt': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialJwt, Map<String, dynamic>>(jwt, (value) => value.toMap()),
      'oauth2AuthorizationCode': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2AuthorizationCode, Map<String, dynamic>>(oauth2AuthorizationCode, (value) => value.toMap()),
      'oauth2ClientCredentials': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOauth2ClientCredentials, Map<String, dynamic>>(oauth2ClientCredentials, (value) => value.toMap()),
      'oidcToken': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialOidcToken, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'serviceAccountCredentials': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialServiceAccountCredentials, Map<String, dynamic>>(serviceAccountCredentials, (value) => value.toMap()),
      'usernameAndPassword': ?pulumi.Input.mapOptionalInputValue<AuthConfigDecryptedCredentialUsernameAndPassword, Map<String, dynamic>>(usernameAndPassword, (value) => value.toMap()),
    };
  }

  factory AuthConfigDecryptedCredential.fromMap(Map<String, dynamic> map) {
    return AuthConfigDecryptedCredential(
      authToken: map['authToken'] == null ? null : (AuthConfigDecryptedCredentialAuthToken.fromMap((map['authToken'] as Map).cast<String, dynamic>())).input(),
      credentialType: (map['credentialType'] as String).input(),
      jwt: map['jwt'] == null ? null : (AuthConfigDecryptedCredentialJwt.fromMap((map['jwt'] as Map).cast<String, dynamic>())).input(),
      oauth2AuthorizationCode: map['oauth2AuthorizationCode'] == null ? null : (AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap((map['oauth2AuthorizationCode'] as Map).cast<String, dynamic>())).input(),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null ? null : (AuthConfigDecryptedCredentialOauth2ClientCredentials.fromMap((map['oauth2ClientCredentials'] as Map).cast<String, dynamic>())).input(),
      oidcToken: map['oidcToken'] == null ? null : (AuthConfigDecryptedCredentialOidcToken.fromMap((map['oidcToken'] as Map).cast<String, dynamic>())).input(),
      serviceAccountCredentials: map['serviceAccountCredentials'] == null ? null : (AuthConfigDecryptedCredentialServiceAccountCredentials.fromMap((map['serviceAccountCredentials'] as Map).cast<String, dynamic>())).input(),
      usernameAndPassword: map['usernameAndPassword'] == null ? null : (AuthConfigDecryptedCredentialUsernameAndPassword.fromMap((map['usernameAndPassword'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

