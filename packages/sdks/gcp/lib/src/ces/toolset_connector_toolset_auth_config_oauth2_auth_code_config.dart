// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig {
  /// Oauth token parameter name to pass through.
  /// Must be in the format '$context.variables.&lt;name_of_variable&gt;'.
  final pulumi.Input<String> oauthToken;

  /// Creates a new [ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig].
  /// [oauthToken] Oauth token parameter name to pass through.
  const ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig({
    required this.oauthToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthToken': oauthToken,
    };
  }

  factory ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetConnectorToolsetAuthConfigOauth2AuthCodeConfig(
      oauthToken: pulumi.Input.fromValue(map['oauthToken'] as String),
    );
  }
}
