// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_spec_authentication_api_key_config.dart';
import 'tool_open_api_spec_authentication_bearer_token_config.dart';
import 'tool_open_api_spec_authentication_oauth_config.dart';
import 'tool_open_api_spec_authentication_service_agent_auth_config.dart';

class ToolOpenApiSpecAuthentication {
  /// Config for API key auth.
  /// This field is part of a union field `authConfig`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecAuthenticationApiKeyConfig?>? apiKeyConfig;
  /// Config for bearer token auth.
  /// This field is part of a union field `authConfig`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecAuthenticationBearerTokenConfig?>? bearerTokenConfig;
  /// Config for OAuth.
  /// This field is part of a union field `authConfig`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecAuthenticationOauthConfig?>? oauthConfig;
  /// Config for [Dialogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  /// This field is part of a union field `authConfig`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<ToolOpenApiSpecAuthenticationServiceAgentAuthConfig?>? serviceAgentAuthConfig;

  /// Creates a new [ToolOpenApiSpecAuthentication].
  /// [apiKeyConfig] Config for API key auth.
  /// [bearerTokenConfig] Config for bearer token auth.
  /// [oauthConfig] Config for OAuth.
  /// [serviceAgentAuthConfig] Config for [Dialogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  const ToolOpenApiSpecAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecAuthenticationApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
      'bearerTokenConfig': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecAuthenticationBearerTokenConfig, Map<String, dynamic>>(bearerTokenConfig, (value) => value.toMap()),
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecAuthenticationOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'serviceAgentAuthConfig': ?pulumi.Input.mapOptionalInputValue<ToolOpenApiSpecAuthenticationServiceAgentAuthConfig, Map<String, dynamic>>(serviceAgentAuthConfig, (value) => value.toMap()),
    };
  }

  factory ToolOpenApiSpecAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiSpecAuthentication(
      apiKeyConfig: (() { final guardedValue = map['apiKeyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecAuthenticationApiKeyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bearerTokenConfig: (() { final guardedValue = map['bearerTokenConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauthConfig: (() { final guardedValue = map['oauthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecAuthenticationOauthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAgentAuthConfig: (() { final guardedValue = map['serviceAgentAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
