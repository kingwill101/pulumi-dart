// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig {
  /// (Output)
  /// The name of [Service
  /// Directory](https://cloud.google.com/service-directory) service.
  /// Format:
  /// `projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}`.
  /// Location of the service directory must be the same as the location of the
  /// app.
  final pulumi.Input<String>? service;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig].
  /// [service] (Output)
  AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig({this.service});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'service': ?service};
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolsetOpenApiToolsetServiceDirectoryConfig(
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
