// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiToolApiAuthenticationBearerTokenConfig {
  /// (Output)
  /// The bearer token. Must be in the format $context.variables.&lt;name_of_variable&gt;.
  final pulumi.Input<String>? token;

  /// Creates a new [ToolOpenApiToolApiAuthenticationBearerTokenConfig].
  /// [token] (Output)
  const ToolOpenApiToolApiAuthenticationBearerTokenConfig({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory ToolOpenApiToolApiAuthenticationBearerTokenConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolApiAuthenticationBearerTokenConfig(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

