// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceDirectoryConfig represents Service Directory configuration for a SCM host connection.
class ServiceDirectoryConfigResponse {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String> service;

  /// Creates a new [ServiceDirectoryConfigResponse].
  /// [service] The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  const ServiceDirectoryConfigResponse({
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': service,
    };
  }

  factory ServiceDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceDirectoryConfigResponse(
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

