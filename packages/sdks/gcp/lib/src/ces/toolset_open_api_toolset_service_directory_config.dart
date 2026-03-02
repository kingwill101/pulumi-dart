// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetOpenApiToolsetServiceDirectoryConfig {
  /// The name of [Service
  /// Directory](https://cloud.google.com/service-directory) service.
  /// Format:
  /// `projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}`.
  /// Location of the service directory must be the same as the location of the
  /// app.
  final pulumi.Input<String> service;

  /// Creates a new [ToolsetOpenApiToolsetServiceDirectoryConfig].
  /// [service] The name of [Service
  ToolsetOpenApiToolsetServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ToolsetOpenApiToolsetServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetServiceDirectoryConfig(
      service: (map['service'] as String).input(),
    );
  }
}

