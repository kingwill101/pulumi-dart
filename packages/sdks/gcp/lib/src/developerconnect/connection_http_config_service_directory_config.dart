// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionHttpConfigServiceDirectoryConfig {
  /// The Service Directory service name.
  /// Format:
  /// projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [ConnectionHttpConfigServiceDirectoryConfig].
  /// [service] The Service Directory service name.
  const ConnectionHttpConfigServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ConnectionHttpConfigServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionHttpConfigServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}
