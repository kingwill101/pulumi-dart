// ignore_for_file: unused_element, unnecessary_cast


/// All error details of the fleet observability feature.
class FleetObservabilityFeatureErrorResponse {
  /// The code of the error.
  final String code;
  /// A human-readable description of the current status.
  final String description;

  /// Creates a new [FleetObservabilityFeatureErrorResponse].
  /// [code] The code of the error.
  /// [description] A human-readable description of the current status.
  FleetObservabilityFeatureErrorResponse({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'description': description,
    };
  }

  factory FleetObservabilityFeatureErrorResponse.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityFeatureErrorResponse(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}

