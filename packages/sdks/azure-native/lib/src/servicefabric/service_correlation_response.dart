// ignore_for_file: unused_element, unnecessary_cast


/// Creates a particular correlation between services.
class ServiceCorrelationResponse {
  /// The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
  final String scheme;
  /// The Arm Resource ID of the service that the correlation relationship is established with.
  final String serviceName;

  /// Creates a new [ServiceCorrelationResponse].
  /// [scheme] The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
  /// [serviceName] The Arm Resource ID of the service that the correlation relationship is established with.
  ServiceCorrelationResponse({
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
      scheme: map['scheme'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

