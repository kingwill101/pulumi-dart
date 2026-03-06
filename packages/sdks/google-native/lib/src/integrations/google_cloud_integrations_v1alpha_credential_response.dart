// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_auth_token_response.dart';
import 'google_cloud_integrations_v1alpha_jwt_response.dart';
import 'google_cloud_integrations_v1alpha_oauth2_authorization_code_response.dart';
import 'google_cloud_integrations_v1alpha_oauth2_client_credentials_response.dart';
import 'google_cloud_integrations_v1alpha_oauth2_resource_owner_credentials_response.dart';
import 'google_cloud_integrations_v1alpha_oidc_token_response.dart';
import 'google_cloud_integrations_v1alpha_service_account_credentials_response.dart';
import 'google_cloud_integrations_v1alpha_username_and_password_response.dart';

/// Defines parameters for a single, canonical credential.
class GoogleCloudIntegrationsV1alphaCredentialResponse {
  /// Auth token credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaAuthTokenResponse> authToken;
  /// Credential type associated with auth config.
  final pulumi.Input<String> credentialType;
  /// JWT credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaJwtResponse> jwt;
  /// The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse> oauth2AuthorizationCode;
  /// OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse> oauth2ClientCredentials;
  /// OAuth2 resource owner credentials
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse> oauth2ResourceOwnerCredentials;
  /// Google OIDC ID Token
  final pulumi.Input<GoogleCloudIntegrationsV1alphaOidcTokenResponse> oidcToken;
  /// Service account credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse> serviceAccountCredentials;
  /// Username and password credential
  final pulumi.Input<GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse> usernameAndPassword;

  /// Creates a new [GoogleCloudIntegrationsV1alphaCredentialResponse].
  /// [authToken] Auth token credential
  /// [credentialType] Credential type associated with auth config.
  /// [jwt] JWT credential
  /// [oauth2AuthorizationCode] The api_key and oauth2_implicit are not covered in v1 and will be picked up once v1 is implemented. ApiKey api_key = 3; OAuth2 authorization code credential
  /// [oauth2ClientCredentials] OAuth2Implicit oauth2_implicit = 5; OAuth2 client credentials
  /// [oauth2ResourceOwnerCredentials] OAuth2 resource owner credentials
  /// [oidcToken] Google OIDC ID Token
  /// [serviceAccountCredentials] Service account credential
  /// [usernameAndPassword] Username and password credential
  const GoogleCloudIntegrationsV1alphaCredentialResponse({
    required this.authToken,
    required this.credentialType,
    required this.jwt,
    required this.oauth2AuthorizationCode,
    required this.oauth2ClientCredentials,
    required this.oauth2ResourceOwnerCredentials,
    required this.oidcToken,
    required this.serviceAccountCredentials,
    required this.usernameAndPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaAuthTokenResponse, Map<String, dynamic>>(authToken, (value) => value.toMap()),
      'credentialType': credentialType,
      'jwt': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaJwtResponse, Map<String, dynamic>>(jwt, (value) => value.toMap()),
      'oauth2AuthorizationCode': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse, Map<String, dynamic>>(oauth2AuthorizationCode, (value) => value.toMap()),
      'oauth2ClientCredentials': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse, Map<String, dynamic>>(oauth2ClientCredentials, (value) => value.toMap()),
      'oauth2ResourceOwnerCredentials': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse, Map<String, dynamic>>(oauth2ResourceOwnerCredentials, (value) => value.toMap()),
      'oidcToken': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaOidcTokenResponse, Map<String, dynamic>>(oidcToken, (value) => value.toMap()),
      'serviceAccountCredentials': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse, Map<String, dynamic>>(serviceAccountCredentials, (value) => value.toMap()),
      'usernameAndPassword': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse, Map<String, dynamic>>(usernameAndPassword, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaCredentialResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaCredentialResponse(
      authToken: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaAuthTokenResponse.fromMap((map['authToken']! as Map).cast<String, dynamic>())),
      credentialType: pulumi.Input.fromValue(map['credentialType'] as String),
      jwt: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaJwtResponse.fromMap((map['jwt']! as Map).cast<String, dynamic>())),
      oauth2AuthorizationCode: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaOAuth2AuthorizationCodeResponse.fromMap((map['oauth2AuthorizationCode']! as Map).cast<String, dynamic>())),
      oauth2ClientCredentials: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaOAuth2ClientCredentialsResponse.fromMap((map['oauth2ClientCredentials']! as Map).cast<String, dynamic>())),
      oauth2ResourceOwnerCredentials: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaOAuth2ResourceOwnerCredentialsResponse.fromMap((map['oauth2ResourceOwnerCredentials']! as Map).cast<String, dynamic>())),
      oidcToken: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaOidcTokenResponse.fromMap((map['oidcToken']! as Map).cast<String, dynamic>())),
      serviceAccountCredentials: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaServiceAccountCredentialsResponse.fromMap((map['serviceAccountCredentials']! as Map).cast<String, dynamic>())),
      usernameAndPassword: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaUsernameAndPasswordResponse.fromMap((map['usernameAndPassword']! as Map).cast<String, dynamic>())),
    );
  }
}

