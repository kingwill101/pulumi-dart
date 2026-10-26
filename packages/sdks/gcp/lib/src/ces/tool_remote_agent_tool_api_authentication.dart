// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_remote_agent_tool_api_authentication_api_key_config.dart';
import 'tool_remote_agent_tool_api_authentication_bearer_token_config.dart';
import 'tool_remote_agent_tool_api_authentication_oauth_config.dart';
import 'tool_remote_agent_tool_api_authentication_service_account_auth_config.dart';

class ToolRemoteAgentToolApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolApiAuthenticationApiKeyConfig>?>? apiKeyConfigs;
  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolApiAuthenticationBearerTokenConfig>?>? bearerTokenConfigs;
  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolApiAuthenticationOauthConfig>?>? oauthConfigs;
  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<List<ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig>?>? serviceAccountAuthConfigs;
  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<List<Map<String, dynamic>>?>? serviceAgentIdTokenAuthConfigs;

  /// Creates a new [ToolRemoteAgentToolApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [bearerTokenConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  const ToolRemoteAgentToolApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolApiAuthenticationApiKeyConfig>, List<Map<String, dynamic>>>(apiKeyConfigs, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolApiAuthenticationApiKeyConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bearerTokenConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolApiAuthenticationBearerTokenConfig>, List<Map<String, dynamic>>>(bearerTokenConfigs, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolApiAuthenticationBearerTokenConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'oauthConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolApiAuthenticationOauthConfig>, List<Map<String, dynamic>>>(oauthConfigs, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolApiAuthenticationOauthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountAuthConfigs': ?pulumi.Input.mapOptionalInputValue<List<ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig>, List<Map<String, dynamic>>>(serviceAccountAuthConfigs, (value) => pulumi.Input.encodeList<ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory ToolRemoteAgentToolApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolRemoteAgentToolApiAuthentication(
      apiKeyConfigs: (() { final guardedValue = map['apiKeyConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolApiAuthenticationApiKeyConfig>(guardedValue, (value) => ToolRemoteAgentToolApiAuthenticationApiKeyConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bearerTokenConfigs: (() { final guardedValue = map['bearerTokenConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolApiAuthenticationBearerTokenConfig>(guardedValue, (value) => ToolRemoteAgentToolApiAuthenticationBearerTokenConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      oauthConfigs: (() { final guardedValue = map['oauthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolApiAuthenticationOauthConfig>(guardedValue, (value) => ToolRemoteAgentToolApiAuthenticationOauthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccountAuthConfigs: (() { final guardedValue = map['serviceAccountAuthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig>(guardedValue, (value) => ToolRemoteAgentToolApiAuthenticationServiceAccountAuthConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAgentIdTokenAuthConfigs: (() { final guardedValue = map['serviceAgentIdTokenAuthConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
    );
  }
}
