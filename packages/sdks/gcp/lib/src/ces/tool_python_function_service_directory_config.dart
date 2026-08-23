// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolPythonFunctionServiceDirectoryConfig {
  /// The name of Service Directory service.
  /// Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}
  final pulumi.Input<String> service;

  /// Creates a new [ToolPythonFunctionServiceDirectoryConfig].
  /// [service] The name of Service Directory service.
  const ToolPythonFunctionServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ToolPythonFunctionServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ToolPythonFunctionServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
