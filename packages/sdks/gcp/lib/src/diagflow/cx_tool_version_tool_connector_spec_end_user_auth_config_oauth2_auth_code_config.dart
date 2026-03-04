// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig {
  /// Oauth token value or parameter name to pass it through.
  final pulumi.Input<String> oauthToken;

  /// Creates a new [CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig].
  /// [oauthToken] Oauth token value or parameter name to pass it through.
  CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig({
    required this.oauthToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'oauthToken': oauthToken};
  }

  factory CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig(
      oauthToken: pulumi.Input.fromValue(map['oauthToken'] as String),
    );
  }
}
