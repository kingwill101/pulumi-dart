// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig {
  /// Oauth token value or parameter name to pass it through.
  final pulumi.Input<String> oauthToken;

  /// Creates a new [CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig].
  /// [oauthToken] Oauth token value or parameter name to pass it through.
  CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig({
    required this.oauthToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oauthToken': oauthToken};
  }

  factory CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig(
      oauthToken: pulumi.Input.fromValue(map['oauthToken'] as String),
    );
  }
}
