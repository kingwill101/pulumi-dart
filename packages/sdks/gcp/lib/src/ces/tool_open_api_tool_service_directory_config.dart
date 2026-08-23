// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiToolServiceDirectoryConfig {
  /// The name of Service Directory service.
  /// Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}
  final pulumi.Input<String>? service;

  /// Creates a new [ToolOpenApiToolServiceDirectoryConfig].
  /// [service] The name of Service Directory service.
  const ToolOpenApiToolServiceDirectoryConfig({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory ToolOpenApiToolServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiToolServiceDirectoryConfig(
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
