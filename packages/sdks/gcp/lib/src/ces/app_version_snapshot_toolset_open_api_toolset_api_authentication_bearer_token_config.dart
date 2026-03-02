// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig {
  /// (Output)
  final pulumi.Input<String>? token;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig].
  /// [token] (Output)
  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': ?token,
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationBearerTokenConfig(
      token: map['token'] == null ? null : (map['token'] as String).input(),
    );
  }
}

