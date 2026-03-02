// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig {
  /// (Optional)
  final pulumi.Input<String>? token;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig].
  /// [token] (Optional)
  ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig(
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

