// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig {
  /// (Output)
  /// The name of [Service
  /// Directory](https://cloud.google.com/service-directory) service.
  /// Format:
  /// `projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}`.
  /// Location of the service directory must be the same as the location of the
  /// app.
  final pulumi.Input<String>? service;

  /// Creates a new [AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig].
  /// [service] (Output)
  AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolOpenApiToolServiceDirectoryConfig(
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

