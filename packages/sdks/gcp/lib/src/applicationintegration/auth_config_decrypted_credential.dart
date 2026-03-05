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
      authToken: (() { final guardedValue = map['authToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialAuthToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credentialType: pulumi.Input.fromValue(map['credentialType'] as String),
      jwt: (() { final guardedValue = map['jwt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialJwt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2AuthorizationCode: (() { final guardedValue = map['oauth2AuthorizationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2AuthorizationCode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2ClientCredentials: (() { final guardedValue = map['oauth2ClientCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOauth2ClientCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialOidcToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountCredentials: (() { final guardedValue = map['serviceAccountCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialServiceAccountCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      usernameAndPassword: (() { final guardedValue = map['usernameAndPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthConfigDecryptedCredentialUsernameAndPassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

