// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_auth_token.dart';
import 'google_cloud_integrations_v1alpha_credential_credential_type.dart';
import 'google_cloud_integrations_v1alpha_jwt.dart';
import 'google_cloud_integrations_v1alpha_oauth2_authorization_code.dart';
import 'google_cloud_integrations_v1alpha_oauth2_client_credentials.dart';
import 'google_cloud_integrations_v1alpha_oauth2_resource_owner_credentials.dart';
import 'google_cloud_integrations_v1alpha_oidc_token.dart';
import 'google_cloud_integrations_v1alpha_service_account_credentials.dart';
import 'google_cloud_integrations_v1alpha_username_and_password.dart';

/// Defines parameters for a single, canonical credential.
class GoogleCloudIntegrationsV1alphaCredential {
  /// Auth token credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAuthToken>? authToken;

  /// Credential type associated with auth config.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaCredentialCredentialType>?
  credentialType;

  /// JWT credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaJwt>? jwt;

  /// The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode>?
  oauth2AuthorizationCode;

  /// OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials>?
  oauth2ClientCredentials;

  /// OAuth2 resource owner credentials
  final pulumi.Input<
    GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials
  >?
  oauth2ResourceOwnerCredentials;

  /// Google OIDC ID Token
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOidcToken>? oidcToken;

  /// Service account credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaServiceAccountCredentials>?
  serviceAccountCredentials;

  /// Username and password credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaUsernameAndPassword>?
  usernameAndPassword;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCredential].
  /// [authToken] Auth token credential
  /// [credentialType] Credential type associated with auth config.
  /// [jwt] JWT credential
  /// [oauth2AuthorizationCode] The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  /// [oauth2ClientCredentials] OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  /// [oauth2ResourceOwnerCredentials] OAuth2 resource owner credentials
  /// [oidcToken] Google OIDC ID Token
  /// [serviceAccountCredentials] Service account credential
  /// [usernameAndPassword] Username and password credential
  GoogleCloudIntegrationsV1alphaCredential({
    this.authToken,
    this.credentialType,
    this.jwt,
    this.oauth2AuthorizationCode,
    this.oauth2ClientCredentials,
    this.oauth2ResourceOwnerCredentials,
    this.oidcToken,
    this.serviceAccountCredentials,
    this.usernameAndPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaAuthToken,
            Map<String, dynamic>
          >(authToken, (value) => value.toMap()),
      'credentialType':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaCredentialCredentialType,
            String
          >(credentialType, (value) => value.wireValue),
      'jwt':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaJwt,
            Map<String, dynamic>
          >(jwt, (value) => value.toMap()),
      'oauth2AuthorizationCode':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode,
            Map<String, dynamic>
          >(oauth2AuthorizationCode, (value) => value.toMap()),
      'oauth2ClientCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials,
            Map<String, dynamic>
          >(oauth2ClientCredentials, (value) => value.toMap()),
      'oauth2ResourceOwnerCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials,
            Map<String, dynamic>
          >(oauth2ResourceOwnerCredentials, (value) => value.toMap()),
      'oidcToken':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaOidcToken,
            Map<String, dynamic>
          >(oidcToken, (value) => value.toMap()),
      'serviceAccountCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaServiceAccountCredentials,
            Map<String, dynamic>
          >(serviceAccountCredentials, (value) => value.toMap()),
      'usernameAndPassword':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudIntegrationsV1alphaUsernameAndPassword,
            Map<String, dynamic>
          >(usernameAndPassword, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaCredential.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudIntegrationsV1alphaCredential(
      authToken: (() {
        final guardedValue = map['authToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaAuthToken.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      credentialType: (() {
        final guardedValue = map['credentialType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaCredentialCredentialType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      jwt: (() {
        final guardedValue = map['jwt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaJwt.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2AuthorizationCode: (() {
        final guardedValue = map['oauth2AuthorizationCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCode.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2ClientCredentials: (() {
        final guardedValue = map['oauth2ClientCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaOAuth2ClientCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2ResourceOwnerCredentials: (() {
        final guardedValue = map['oauth2ResourceOwnerCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oidcToken: (() {
        final guardedValue = map['oidcToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaOidcToken.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceAccountCredentials: (() {
        final guardedValue = map['serviceAccountCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaServiceAccountCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      usernameAndPassword: (() {
        final guardedValue = map['usernameAndPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudIntegrationsV1alphaUsernameAndPassword.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
