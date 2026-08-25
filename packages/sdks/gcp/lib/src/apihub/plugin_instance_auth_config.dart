// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_instance_auth_config_api_key_config.dart';
import 'plugin_instance_auth_config_google_service_account_config.dart';
import 'plugin_instance_auth_config_oauth2_client_credentials_config.dart';
import 'plugin_instance_auth_config_user_password_config.dart';

class PluginInstanceAuthConfig {
  /// Config for authentication with API key.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfigApiKeyConfig?>? apiKeyConfig;
  /// Possible values:
  /// AUTH_TYPE_UNSPECIFIED
  /// NO_AUTH
  /// GOOGLE_SERVICE_ACCOUNT
  /// USER_PASSWORD
  /// API_KEY
  /// OAUTH2_CLIENT_CREDENTIALS
  final pulumi.Input<String> authType;
  /// Config for Google service account authentication.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfigGoogleServiceAccountConfig?>? googleServiceAccountConfig;
  /// Parameters to support Oauth 2.0 client credentials grant authentication.
  /// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfigOauth2ClientCredentialsConfig?>? oauth2ClientCredentialsConfig;
  /// Parameters to support Username and Password Authentication.
  /// Structure is documented below.
  final pulumi.Input<PluginInstanceAuthConfigUserPasswordConfig?>? userPasswordConfig;

  /// Creates a new [PluginInstanceAuthConfig].
  /// [apiKeyConfig] Config for authentication with API key.
  /// [authType] Possible values:
  /// [googleServiceAccountConfig] Config for Google service account authentication.
  /// [oauth2ClientCredentialsConfig] Parameters to support Oauth 2.0 client credentials grant authentication.
  /// [userPasswordConfig] Parameters to support Username and Password Authentication.
  const PluginInstanceAuthConfig({
    this.apiKeyConfig,
    required this.authType,
    this.googleServiceAccountConfig,
    this.oauth2ClientCredentialsConfig,
    this.userPasswordConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfigApiKeyConfig, Map<String, dynamic>>(apiKeyConfig, (value) => value.toMap()),
      'authType': authType,
      'googleServiceAccountConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfigGoogleServiceAccountConfig, Map<String, dynamic>>(googleServiceAccountConfig, (value) => value.toMap()),
      'oauth2ClientCredentialsConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfigOauth2ClientCredentialsConfig, Map<String, dynamic>>(oauth2ClientCredentialsConfig, (value) => value.toMap()),
      'userPasswordConfig': ?pulumi.Input.mapOptionalInputValue<PluginInstanceAuthConfigUserPasswordConfig, Map<String, dynamic>>(userPasswordConfig, (value) => value.toMap()),
    };
  }

  factory PluginInstanceAuthConfig.fromMap(Map<String, dynamic> map) {
    return PluginInstanceAuthConfig(
      apiKeyConfig: (() { final guardedValue = map['apiKeyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceAuthConfigApiKeyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      googleServiceAccountConfig: (() { final guardedValue = map['googleServiceAccountConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceAuthConfigGoogleServiceAccountConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2ClientCredentialsConfig: (() { final guardedValue = map['oauth2ClientCredentialsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceAuthConfigOauth2ClientCredentialsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPasswordConfig: (() { final guardedValue = map['userPasswordConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginInstanceAuthConfigUserPasswordConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
