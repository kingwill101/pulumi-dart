// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_tool_version_tool_open_api_spec_authentication_api_key_config.dart';
import 'cx_tool_version_tool_open_api_spec_authentication_bearer_token_config.dart';
import 'cx_tool_version_tool_open_api_spec_authentication_oauth_config.dart';
import 'cx_tool_version_tool_open_api_spec_authentication_service_agent_auth_config.dart';

class CxToolVersionToolOpenApiSpecAuthentication {
  /// Config for API key auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig>? apiKeyConfig;
  /// Config for bearer token auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig>? bearerTokenConfig;
  /// Config for OAuth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolOpenApiSpecAuthenticationOauthConfig>? oauthConfig;
  /// Config for [Diglogflow service agent](https://cloud.google.com/iam/docs/service-agents#dialogflow-service-agent) auth.
  /// This field is part of a union field `auth_config`: Only one of `apiKeyConfig`, `oauthConfig`, `serviceAgentAuthConfig`, or `bearerTokenConfig` may be set.
  /// Structure is documented below.
  final pulumi.Input<CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig>? serviceAgentAuthConfig;

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
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
      'bearerTokenConfig': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig, Map<String, dynamic>>(bearerTokenConfig, (value) => value.toMap()),
      'oauthConfig': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolOpenApiSpecAuthenticationOauthConfig, Map<String, dynamic>>(oauthConfig, (value) => value.toMap()),
      'serviceAgentAuthConfig': ?pulumi.Input.mapOptionalInputValue<CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig, Map<String, dynamic>>(serviceAgentAuthConfig, (value) => value.toMap()),
    };
  }

  factory CxToolVersionToolOpenApiSpecAuthentication.fromMap(Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecAuthentication(
      apiKeyConfig: map['apiKeyConfig'] == null ? null : (CxToolVersionToolOpenApiSpecAuthenticationApiKeyConfig.fromMap((map['apiKeyConfig']! as Map).cast<String, dynamic>())).input(),
      bearerTokenConfig: map['bearerTokenConfig'] == null ? null : (CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap((map['bearerTokenConfig']! as Map).cast<String, dynamic>())).input(),
      oauthConfig: map['oauthConfig'] == null ? null : (CxToolVersionToolOpenApiSpecAuthenticationOauthConfig.fromMap((map['oauthConfig']! as Map).cast<String, dynamic>())).input(),
      serviceAgentAuthConfig: map['serviceAgentAuthConfig'] == null ? null : (CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap((map['serviceAgentAuthConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

