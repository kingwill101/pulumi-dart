// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceDirectoryConfig represents Service Directory configuration for a SCM host connection.
class ServiceDirectoryConfig {
  /// The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  final pulumi.Input<String>? service;

  /// Creates a new [ServiceDirectoryConfig].
  /// [service] The Service Directory service name. Format: projects/{project}/locations/{location}/namespaces/{namespace}/services/{service}.
  const ServiceDirectoryConfig({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory ServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ServiceDirectoryConfig(
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

