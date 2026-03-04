// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for a service.
class ServiceConfigResponse {
  /// Optional. Domain name of the service. Example: console.cloud.google
  final pulumi.Input<String> domain;

  /// Creates a new [ServiceConfigResponse].
  /// [domain] Optional. Domain name of the service. Example: console.cloud.google
  ServiceConfigResponse({required this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': domain};
  }

  factory ServiceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConfigResponse(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
