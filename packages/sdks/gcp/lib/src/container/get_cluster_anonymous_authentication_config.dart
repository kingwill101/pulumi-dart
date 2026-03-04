// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAnonymousAuthenticationConfig {
  /// Setting this to LIMITED will restrict authentication of anonymous users to health check endpoints only.
  /// Accepted values are:
  /// * ENABLED: Authentication of anonymous users is enabled for all endpoints.
  /// * LIMITED: Anonymous access is only allowed for health check endpoints.
  final pulumi.Input<String> mode;

  /// Creates a new [GetClusterAnonymousAuthenticationConfig].
  /// [mode] Setting this to LIMITED will restrict authentication of anonymous users to health check endpoints only.
  GetClusterAnonymousAuthenticationConfig({required this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory GetClusterAnonymousAuthenticationConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAnonymousAuthenticationConfig(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
