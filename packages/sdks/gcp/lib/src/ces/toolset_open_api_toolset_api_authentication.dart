// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_open_api_toolset_api_authentication_api_key_config.dart';
import 'toolset_open_api_toolset_api_authentication_bearer_token_config.dart';
import 'toolset_open_api_toolset_api_authentication_oauth_config.dart';
import 'toolset_open_api_toolset_api_authentication_service_account_auth_config.dart';

class ToolsetOpenApiToolsetApiAuthentication {
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig>? apiKeyConfig;
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig>? bearerTokenConfig;
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetApiAuthenticationOauthConfig>? oauthConfig;
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig>? serviceAccountAuthConfig;
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<Map<String, dynamic>>? serviceAgentIdTokenAuthConfig;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthentication].
  /// [apiKeyConfig] Configurations for authentication with API key.
  /// [bearerTokenConfig] Configurations for authentication with a bearer token.
  /// [oauthConfig] Configurations for authentication with OAuth.
  /// [serviceAccountAuthConfig] Configurations for authentication using a custom service account.
  /// [serviceAgentIdTokenAuthConfig] Configurations for authentication with [ID
  ToolsetOpenApiToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
      'bearerTokenConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig, Map<String, dynamic>>(bearerTokenConfig, (value) => value.toMap()),
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetApiAuthenticationOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'serviceAccountAuthConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(serviceAccountAuthConfig, (value) => value.toMap()),
      'serviceAgentIdTokenAuthConfig': ?serviceAgentIdTokenAuthConfig,
    };
  }

  factory ToolsetOpenApiToolsetApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null ? null : (ToolsetOpenApiToolsetApiAuthenticationApiKeyConfig.fromMap((map['apiKeyConfig']! as Map).cast<String, dynamic>())).input(),
      bearerTokenConfig: map['bearerTokenConfig'] == null ? null : (ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap((map['bearerTokenConfig']! as Map).cast<String, dynamic>())).input(),
      oauthConfig: map['oauthConfig'] == null ? null : (ToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap((map['oauthConfig']! as Map).cast<String, dynamic>())).input(),
      serviceAccountAuthConfig: map['serviceAccountAuthConfig'] == null ? null : (ToolsetOpenApiToolsetApiAuthenticationServiceAccountAuthConfig.fromMap((map['serviceAccountAuthConfig']! as Map).cast<String, dynamic>())).input(),
      serviceAgentIdTokenAuthConfig: map['serviceAgentIdTokenAuthConfig'] == null ? null : ((map['serviceAgentIdTokenAuthConfig']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

