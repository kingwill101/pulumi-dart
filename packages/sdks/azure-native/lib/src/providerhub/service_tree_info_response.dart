// ignore_for_file: unused_element, unnecessary_cast


class ServiceTreeInfoResponse {
  /// The component id.
  final String? componentId;
  /// The readiness.
  final String? readiness;
  /// The service id.
  final String? serviceId;

  /// Creates a new [ServiceTreeInfoResponse].
  /// [componentId] The component id.
  /// [readiness] The readiness.
  /// [serviceId] The service id.
  ServiceTreeInfoResponse({
    this.componentId,
    this.readiness,
    this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentId': ?componentId,
      'readiness': ?readiness,
      'serviceId': ?serviceId,
    };
  }

  factory ServiceTreeInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServiceTreeInfoResponse(
      componentId: map['componentId'] == null ? null : map['componentId'] as String,
      readiness: map['readiness'] == null ? null : map['readiness'] as String,
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
    );
  }
}

