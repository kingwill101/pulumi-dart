// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceDirectoryConfig represents Service Directory configuration for a connection.
class GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig].
  /// [service] The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsCloudbuildV2ServiceDirectoryConfig(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

