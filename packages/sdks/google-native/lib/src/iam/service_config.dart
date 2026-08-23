// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a service.
class ServiceConfig {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final pulumi.Input<String>? domain;

  /// Creates a new [ServiceConfig].
  /// [domain] Optional. Domain name of the service. Example: console.cloud.google
  const ServiceConfig({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
    };
  }

  factory ServiceConfig.fromMap(Map<String, dynamic> map) {
    return ServiceConfig(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
