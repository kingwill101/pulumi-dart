// ignore_for_file: unused_element, unnecessary_cast

import 'cx_tool_version_tool_open_api_spec_authentication_api_key_config.dart';
import 'cx_tool_version_tool_open_api_spec_authentication_bearer_token_config.dart';
import 'cx_tool_version_tool_open_api_spec_authentication_oauth_config.dart';
import 'cx_tool_version_tool_open_api_spec_authentication_service_agent_auth_config.dart';

class CxToolVersionToolOpenApiSpecAuthentication {
  /// Config for API key auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig? apiKeyConfig;
  /// Config for bearer token auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig? bearerTokenConfig;
  /// Config for OAuth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecAuthenticationOauthConfig? oauthConfig;
  /// Config for [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig? serviceAgentAuthConfig;

  /// Creates a new [CxToolVersionToolOpenApiSpecAuthentication].
  /// [apiKeyConfig] Config for API key auth.
  /// [bearerTokenConfig] Config for bearer token auth.
  /// [oauthConfig] Config for OAuth.
  /// [serviceAgentAuthConfig] Config for [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  CxToolVersionToolOpenApiSpecAuthentication({
    this.apiKeyConfig,
    this.bearerTokenConfig,
    this.oauthConfig,
    this.serviceAgentAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?apiKeyConfig == null ? null : apiKeyConfig!.toMap(),
      'bearerTokenConfig': ?bearerTokenConfig == null ? null : bearerTokenConfig!.toMap(),
      'oauthConfig': ?oauthConfig == null ? null : oauthConfig!.toMap(),
      'serviceAgentAuthConfig': ?serviceAgentAuthConfig == null ? null : serviceAgentAuthConfig!.toMap(),
    };
  }

  factory CxToolVersionToolOpenApiSpecAuthentication.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null ? null : CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig.fromMap((map['apiKeyConfig'] as Map).cast<String, dynamic>()),
      bearerTokenConfig: map['bearerTokenConfig'] == null ? null : CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap((map['bearerTokenConfig'] as Map).cast<String, dynamic>()),
      oauthConfig: map['oauthConfig'] == null ? null : CxToolVersionToolOpenApiSpecAuthenticationOauthConfig.fromMap((map['oauthConfig'] as Map).cast<String, dynamic>()),
      serviceAgentAuthConfig: map['serviceAgentAuthConfig'] == null ? null : CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap((map['serviceAgentAuthConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

