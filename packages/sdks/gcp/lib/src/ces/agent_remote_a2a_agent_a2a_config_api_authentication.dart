// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_remote_a2a_agent_a2a_config_api_authentication_api_key_config.dart';
import 'agent_remote_a2a_agent_a2a_config_api_authentication_bearer_token_config.dart';
import 'agent_remote_a2a_agent_a2a_config_api_authentication_oauth_config.dart';
import 'agent_remote_a2a_agent_a2a_config_api_authentication_service_account_auth_config.dart';

class AgentRemoteA2aAgentA2aConfigApiAuthentication {
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig?>? apiKeyConfig;
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig?>? bearerTokenConfig;
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfigApiAuthenticationOauthConfig?>? oauthConfig;
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig?>? serviceAccountAuthConfig;

  /// Creates a new [AgentRemoteA2aAgentA2aConfigApiAuthentication].
  /// [apiKeyConfig] Configurations for authentication with API key.
  /// [bearerTokenConfig] Configurations for authentication with a bearer token.
  /// [oauthConfig] Configurations for authentication with OAuth.
  /// [serviceAccountAuthConfig] Configurations for authentication using a custom service account.
  const AgentRemoteA2aAgentA2aConfigApiAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAccountAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
      'bearerTokenConfig': ?pulumi.Input.mapOptionalInputValue<AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig, Map<String, dynamic>>(bearerTokenConfig, (value) => value.toMap()),
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<AgentRemoteA2aAgentA2aConfigApiAuthenticationOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'serviceAccountAuthConfig': ?pulumi.Input.mapOptionalInputValue<AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig, Map<String, dynamic>>(serviceAccountAuthConfig, (value) => value.toMap()),
    };
  }

  factory AgentRemoteA2aAgentA2aConfigApiAuthentication.fromMap(Map<String, dynamic> map) {
    return AgentRemoteA2aAgentA2aConfigApiAuthentication(
      apiKeyConfig: (() { final guardedValue = map['apiKeyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfigApiAuthenticationApiKeyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bearerTokenConfig: (() { final guardedValue = map['bearerTokenConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfigApiAuthenticationBearerTokenConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfigApiAuthenticationOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccountAuthConfig: (() { final guardedValue = map['serviceAccountAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentRemoteA2aAgentA2aConfigApiAuthenticationServiceAccountAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
