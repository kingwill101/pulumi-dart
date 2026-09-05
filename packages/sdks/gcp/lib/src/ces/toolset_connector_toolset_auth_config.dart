// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'toolset_connector_toolset_auth_config_oauth2_auth_code_config.dart';
import 'toolset_connector_toolset_auth_config_oauth2_jwt_bearer_config.dart';

class ToolsetConnectorToolsetAuthConfig {
  /// Oauth 2.0 Authorization Code authentication configuration.
  /// Structure is documented below.
  final pulumi.Input<ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig?>? oauth2AuthCodeConfig;
  /// JWT Profile Oauth 2.0 Authorization Grant authentication configuration.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedConnectorToolsetAuthConfigOauth2AuthCodeConfig"&gt;&lt;/a&gt;The `oauth2AuthCodeConfig` block supports:
  final pulumi.Input<ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig?>? oauth2JwtBearerConfig;

  /// Creates a new [ToolsetConnectorToolsetAuthConfig].
  /// [oauth2AuthCodeConfig] Oauth 2.0 Authorization Code authentication configuration.
  /// [oauth2JwtBearerConfig] JWT Profile Oauth 2.0 Authorization Grant authentication configuration.
  const ToolsetConnectorToolsetAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2AuthCodeConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig, Map<String, dynamic>>(oauth2AuthCodeConfig, (value) => value.toMap()),
      'oauth2JwtBearerConfig': ?pulumi.Input.mapOptionalInputValue<ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig, Map<String, dynamic>>(oauth2JwtBearerConfig, (value) => value.toMap()),
    };
  }

  factory ToolsetConnectorToolsetAuthConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetConnectorToolsetAuthConfig(
      oauth2AuthCodeConfig: (() { final guardedValue = map['oauth2AuthCodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oauth2JwtBearerConfig: (() { final guardedValue = map['oauth2JwtBearerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ToolsetConnectorToolsetAuthConfigOauth2JwtBearerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
