// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_open_api_tool_api_authentication_api_key_config.dart';
import 'app_version_snapshot_tool_open_api_tool_api_authentication_oauth_config.dart';
import 'app_version_snapshot_tool_open_api_tool_api_authentication_service_account_auth_config.dart';

class AppVersionSnapshotToolOpenApiToolApiAuthentication {
  /// (Output)
  /// Configurations for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<
    List<AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig>
  >?
  apiKeyConfigs;

  /// (Output)
  /// Configurations for authentication with OAuth.
  /// Structure is documented below.
  final pulumi.Input<
    List<AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig>
  >?
  oauthConfigs;

  /// (Output)
  /// Configurations for authentication using a custom service account.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig
    >
  >?
  serviceAccountAuthConfigs;

  /// (Output)
  /// Configurations for authentication with [ID
  /// token](https://cloud.google.com/docs/authentication/token-types#id) generated
  /// from service agent.
  final pulumi.Input<List<Map<String, dynamic>>>?
  serviceAgentIdTokenAuthConfigs;

  /// Creates a new [AppVersionSnapshotToolOpenApiToolApiAuthentication].
  /// [apiKeyConfigs] (Output)
  /// [oauthConfigs] (Output)
  /// [serviceAccountAuthConfigs] (Output)
  /// [serviceAgentIdTokenAuthConfigs] (Output)
  AppVersionSnapshotToolOpenApiToolApiAuthentication({
    this.apiKeyConfigs,
    this.oauthConfigs,
    this.serviceAccountAuthConfigs,
    this.serviceAgentIdTokenAuthConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig
            >,
            List<Map<String, dynamic>>
          >(
            apiKeyConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'oauthConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig>,
            List<Map<String, dynamic>>
          >(
            oauthConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceAccountAuthConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig
            >,
            List<Map<String, dynamic>>
          >(
            serviceAccountAuthConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serviceAgentIdTokenAuthConfigs': ?serviceAgentIdTokenAuthConfigs,
    };
  }

  factory AppVersionSnapshotToolOpenApiToolApiAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolOpenApiToolApiAuthentication(
      apiKeyConfigs: (() {
        final guardedValue = map['apiKeyConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotToolOpenApiToolApiAuthenticationApiKeyConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      oauthConfigs: (() {
        final guardedValue = map['oauthConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig.fromMap(
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
            AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig
          >(
            guardedValue,
            (value) =>
                AppVersionSnapshotToolOpenApiToolApiAuthenticationServiceAccountAuthConfig.fromMap(
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
