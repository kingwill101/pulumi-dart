// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_api_key_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_bearer_token_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_oauth_config.dart';
import 'app_version_snapshot_toolset_open_api_toolset_api_authentication_service_account_auth_config.dart';

class AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig>>? apiKeyConfigs;
  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig>>? bearerTokenConfigs;
  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig>>? oauthConfigs;
  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig>>? serviceAccountAuthConfigs;
  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<List<Map<String, dynamic>>>? serviceAgentIdTokenAuthConfigs;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [bearerTokenConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  const AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig>, List<Map<String, dynamic>>>(apiKeyConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bearerTokenConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig>, List<Map<String, dynamic>>>(bearerTokenConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauthConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig>, List<Map<String, dynamic>>>(oauthConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountAuthConfigs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig>, List<Map<String, dynamic>>>(serviceAccountAuthConfigs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetApiAuthentication(
      apiKeyConfigs: (() { final guardedValue = map['apiKeyConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig>(guardedValue, (value) => AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bearerTokenConfigs: (() { final guardedValue = map['bearerTokenConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig>(guardedValue, (value) => AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oauthConfigs: (() { final guardedValue = map['oauthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig>(guardedValue, (value) => AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccountAuthConfigs: (() { final guardedValue = map['serviceAccountAuthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig>(guardedValue, (value) => AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAgentIdTokenAuthConfigs: (() { final guardedValue = map['serviceAgentIdTokenAuthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}

