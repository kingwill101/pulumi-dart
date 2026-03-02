// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiToolServiceDirectoryConfig {
  /// (Output)
  /// The name of [Service
  /// Directory](https://cloud.google.com/service-directory) service.
  /// Format:
  /// `projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}`.
  /// Location of the service directory must be the same as the location of the
  /// app.
  final pulumi.Input<String>? service;

  /// Creates a new [ToolOpenApiToolServiceDirectoryConfig].
  /// [service] (Output)
  ToolOpenApiToolServiceDirectoryConfig({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory ToolOpenApiToolServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolServiceDirectoryConfig(
      service: map['service'] == null ? null : (map['service']! as String).input(),
    );
  }
}

