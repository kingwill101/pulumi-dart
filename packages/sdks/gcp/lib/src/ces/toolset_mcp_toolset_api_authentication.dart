// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_mcp_toolset_api_authentication_api_key_config.dart';
import 'toolset_mcp_toolset_api_authentication_bearer_token_config.dart';
import 'toolset_mcp_toolset_api_authentication_oauth_config.dart';
import 'toolset_mcp_toolset_api_authentication_service_account_auth_config.dart';

class ToolsetMcpToolsetApiAuthentication {
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetApiAuthenticationApiKeyConfig>? apiKeyConfig;
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetApiAuthenticationBearerTokenConfig>? bearerTokenConfig;
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetApiAuthenticationOauthConfig>? oauthConfig;
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfig>? serviceAccountAuthConfig;
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<Map<String, dynamic>>? serviceAgentIdTokenAuthConfig;

  /// Creates a new [ToolsetMcpToolsetApiAuthentication].
  /// [apiKeyConfig] Configurations for authentication with API key.
  /// [bearerTokenConfig] Configurations for authentication with a bearer token.
  /// [oauthConfig] Configurations for authentication with OAuth.
  /// [serviceAccountAuthConfig] Configurations for authentication using a custom service account.
  /// [serviceAgentIdTokenAuthConfig] Configurations for authentication with [ID
  const ToolsetMcpToolsetApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
    this.serviceAgentIdTokenAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetApiAuthenticationApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
      'bearerTokenConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetApiAuthenticationBearerTokenConfig, Map<String, dynamic>>(bearerTokenConfig, (value) => value.toMap()),
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetApiAuthenticationOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'serviceAccountAuthConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(serviceAccountAuthConfig, (value) => value.toMap()),
      'serviceAgentIdTokenAuthConfig': ?serviceAgentIdTokenAuthConfig,
    };
  }

  factory ToolsetMcpToolsetApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolsetMcpToolsetApiAuthentication(
      apiKeyConfig: (() { final guardedValue = map['apiKeyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetApiAuthenticationApiKeyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bearerTokenConfig: (() { final guardedValue = map['bearerTokenConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetApiAuthenticationBearerTokenConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetApiAuthenticationOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountAuthConfig: (() { final guardedValue = map['serviceAccountAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetMcpToolsetApiAuthenticationServiceAccountAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAgentIdTokenAuthConfig: (() { final guardedValue = map['serviceAgentIdTokenAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
