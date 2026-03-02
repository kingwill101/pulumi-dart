// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiToolApiAuthenticationBearerTokenConfig {
  /// (Output)
  /// The bearer token. Must be in the format $context.variables.<name_of_variable>.
  final pulumi.Input<String>? token;

  /// Creates a new [ToolOpenApiToolApiAuthenticationBearerTokenConfig].
  /// [token] (Output)
  ToolOpenApiToolApiAuthenticationBearerTokenConfig({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory ToolOpenApiToolApiAuthenticationBearerTokenConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthenticationBearerTokenConfig(
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

