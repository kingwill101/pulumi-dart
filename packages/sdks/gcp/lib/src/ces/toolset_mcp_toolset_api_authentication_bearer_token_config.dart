// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetMcpToolsetApiAuthenticationBearerTokenConfig {
  /// (Optional)
  final pulumi.Input<String>? token;

  /// Creates a new [ToolsetMcpToolsetApiAuthenticationBearerTokenConfig].
  /// [token] (Optional)
  const ToolsetMcpToolsetApiAuthenticationBearerTokenConfig({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory ToolsetMcpToolsetApiAuthenticationBearerTokenConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetMcpToolsetApiAuthenticationBearerTokenConfig(
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
