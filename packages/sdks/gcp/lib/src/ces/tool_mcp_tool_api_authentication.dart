// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_mcp_tool_api_authentication_api_key_config.dart';
import 'tool_mcp_tool_api_authentication_bearer_token_config.dart';
import 'tool_mcp_tool_api_authentication_oauth_config.dart';
import 'tool_mcp_tool_api_authentication_service_account_auth_config.dart';

class ToolMcpToolApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolApiAuthenticationApiKeyConfig>>? apiKeyConfigs;
  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolApiAuthenticationBearerTokenConfig>>? bearerTokenConfigs;
  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolApiAuthenticationOauthConfig>>? oauthConfigs;
  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<List<ToolMcpToolApiAuthenticationServiceAccountAuthConfig>>? serviceAccountAuthConfigs;
  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<List<Map<String, dynamic>>>? serviceAgentIdTokenAuthConfigs;

  /// Creates a new [ToolMcpToolApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [bearerTokenConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  const ToolMcpToolApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolApiAuthenticationApiKeyConfig>, List<Map<String, dynamic>>>(apiKeyConfigs, (value) => pulumi.Input.encodeList<ToolMcpToolApiAuthenticationApiKeyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bearerTokenConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolApiAuthenticationBearerTokenConfig>, List<Map<String, dynamic>>>(bearerTokenConfigs, (value) => pulumi.Input.encodeList<ToolMcpToolApiAuthenticationBearerTokenConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauthConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolApiAuthenticationOauthConfig>, List<Map<String, dynamic>>>(oauthConfigs, (value) => pulumi.Input.encodeList<ToolMcpToolApiAuthenticationOauthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountAuthConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolMcpToolApiAuthenticationServiceAccountAuthConfig>, List<Map<String, dynamic>>>(serviceAccountAuthConfigs, (value) => pulumi.Input.encodeList<ToolMcpToolApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory ToolMcpToolApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolMcpToolApiAuthentication(
      apiKeyConfigs: (() { final guardedValue = map['apiKeyConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolApiAuthenticationApiKeyConfig>(guardedValue, (value) => ToolMcpToolApiAuthenticationApiKeyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bearerTokenConfigs: (() { final guardedValue = map['bearerTokenConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolApiAuthenticationBearerTokenConfig>(guardedValue, (value) => ToolMcpToolApiAuthenticationBearerTokenConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oauthConfigs: (() { final guardedValue = map['oauthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolApiAuthenticationOauthConfig>(guardedValue, (value) => ToolMcpToolApiAuthenticationOauthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccountAuthConfigs: (() { final guardedValue = map['serviceAccountAuthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolMcpToolApiAuthenticationServiceAccountAuthConfig>(guardedValue, (value) => ToolMcpToolApiAuthenticationServiceAccountAuthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAgentIdTokenAuthConfigs: (() { final guardedValue = map['serviceAgentIdTokenAuthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}
