// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolMcpToolServiceDirectoryConfig {
  /// The name of Service Directory service.
  /// Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}
  final pulumi.Input<String?>? service;

  /// Creates a new [ToolMcpToolServiceDirectoryConfig].
  /// [service] The name of Service Directory service.
  const ToolMcpToolServiceDirectoryConfig({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory ToolMcpToolServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ToolMcpToolServiceDirectoryConfig(
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
