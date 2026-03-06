// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Creates a particular correlation between services.
class ServiceCorrelationResponse {
  /// The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
  final pulumi.Input<String> scheme;
  /// The Arm Resource ID of the service that the correlation relationship is established with.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ServiceCorrelationResponse].
  /// [scheme] The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
  /// [serviceName] The Arm Resource ID of the service that the correlation relationship is established with.
  const ServiceCorrelationResponse({
    required this.scheme,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheme': scheme,
      'serviceName': serviceName,
    };
  }

  factory ServiceCorrelationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceCorrelationResponse(
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

