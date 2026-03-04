// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_open_api_tool_api_authentication_api_key_config.dart';
import 'tool_open_api_tool_api_authentication_bearer_token_config.dart';
import 'tool_open_api_tool_api_authentication_oauth_config.dart';
import 'tool_open_api_tool_api_authentication_service_account_auth_config.dart';

class ToolOpenApiToolApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<List<ToolOpenApiToolApiAuthenticationApiKeyConfig>>?
  apiKeyConfigs;

  /// (Output)
  /// Configurations for authentication with a bearer token.
  /// Structure is documented below.
  final pulumi.Input<List<ToolOpenApiToolApiAuthenticationBearerTokenConfig>>?
  bearerTokenConfigs;

  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<List<ToolOpenApiToolApiAuthenticationOauthConfig>>?
  oauthConfigs;

  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<
    List<ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig>
  >?
  serviceAccountAuthConfigs;

  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<List<Map<String, dynamic>>>?
  serviceAgentIdTokenAuthConfigs;

  /// Creates a new [ToolOpenApiToolApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [bearerTokenConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  ToolOpenApiToolApiAuthentication({
    this.apiKeyConfigs,
    this.bearerTokenConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ToolOpenApiToolApiAuthenticationApiKeyConfig>,
            List<Map<String, dynamic>>
          >(
            apiKeyConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ToolOpenApiToolApiAuthenticationApiKeyConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bearerTokenConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ToolOpenApiToolApiAuthenticationBearerTokenConfig>,
            List<Map<String, dynamic>>
          >(
            bearerTokenConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ToolOpenApiToolApiAuthenticationBearerTokenConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'oauthConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ToolOpenApiToolApiAuthenticationOauthConfig>,
            List<Map<String, dynamic>>
          >(
            oauthConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ToolOpenApiToolApiAuthenticationOauthConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceAccountAuthConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig>,
            List<Map<String, dynamic>>
          >(
            serviceAccountAuthConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory ToolOpenApiToolApiAuthentication.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthentication(
      apiKeyConfigs: (() {
        final guardedValue = map['apiKeyConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ToolOpenApiToolApiAuthenticationApiKeyConfig>(
            guardedValue,
            (value) => ToolOpenApiToolApiAuthenticationApiKeyConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      bearerTokenConfigs: (() {
        final guardedValue = map['bearerTokenConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ToolOpenApiToolApiAuthenticationBearerTokenConfig
          >(
            guardedValue,
            (value) =>
                ToolOpenApiToolApiAuthenticationBearerTokenConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      oauthConfigs: (() {
        final guardedValue = map['oauthConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ToolOpenApiToolApiAuthenticationOauthConfig>(
            guardedValue,
            (value) => ToolOpenApiToolApiAuthenticationOauthConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      serviceAccountAuthConfigs: (() {
        final guardedValue = map['serviceAccountAuthConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig
          >(
            guardedValue,
            (value) =>
                ToolOpenApiToolApiAuthenticationServiceAccountAuthConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      serviceAgentIdTokenAuthConfigs: (() {
        final guardedValue = map['serviceAgentIdTokenAuthConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<Map<String, dynamic>>(),
        );
      })(),
    );
  }
}
