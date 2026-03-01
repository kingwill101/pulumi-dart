// ignore_for_file: unused_element, unnecessary_cast

import 'cx_tool_connector_spec_end_user_auth_config_oauth2_auth_code_config.dart';
import 'cx_tool_connector_spec_end_user_auth_config_oauth2_jwt_bearer_config.dart';

class CxToolConnectorSpecEndUserAuthConfig {
  /// Oauth 2.0 Authorization Code authentication. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// Structure is documented below.
  final CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig? oauth2AuthCodeConfig;
  /// JWT Profile Oauth 2.0 Authorization Grant authentication.. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_connector_spec_end_user_auth_config_oauth2_auth_code_config"></a>The `oauth2_auth_code_config` block supports:
  final CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig? oauth2JwtBearerConfig;

  /// Creates a new [CxToolConnectorSpecEndUserAuthConfig].
  /// [oauth2AuthCodeConfig] Oauth 2.0 Authorization Code authentication. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// [oauth2JwtBearerConfig] JWT Profile Oauth 2.0 Authorization Grant authentication.. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  CxToolConnectorSpecEndUserAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2AuthCodeConfig': ?oauth2AuthCodeConfig == null ? null : oauth2AuthCodeConfig!.toMap(),
      'oauth2JwtBearerConfig': ?oauth2JwtBearerConfig == null ? null : oauth2JwtBearerConfig!.toMap(),
    };
  }

  factory CxToolConnectorSpecEndUserAuthConfig.fromMap(Map<String, dynamic> map) {
    return CxToolConnectorSpecEndUserAuthConfig(
      oauth2AuthCodeConfig: map['oauth2AuthCodeConfig'] == null ? null : CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap((map['oauth2AuthCodeConfig'] as Map).cast<String, dynamic>()),
      oauth2JwtBearerConfig: map['oauth2JwtBearerConfig'] == null ? null : CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig.fromMap((map['oauth2JwtBearerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

