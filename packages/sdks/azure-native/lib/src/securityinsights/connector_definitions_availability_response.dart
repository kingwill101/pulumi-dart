// ignore_for_file: unused_element, unnecessary_cast


/// The exposure status of the connector to the customers.
class ConnectorDefinitionsAvailabilityResponse {
  /// Gets or sets a value indicating whether the connector is preview.
  final bool? isPreview;
  /// The exposure status of the connector to the customers. Available values are 0-4 (0=None, 1=Available, 2=FeatureFlag, 3=Internal).
  final int? status;

  /// Creates a new [ConnectorDefinitionsAvailabilityResponse].
  /// [isPreview] Gets or sets a value indicating whether the connector is preview.
  /// [status] The exposure status of the connector to the customers. Available values are 0-4 (0=None, 1=Available, 2=FeatureFlag, 3=Internal).
  ConnectorDefinitionsAvailabilityResponse({
    this.isPreview,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPreview': ?isPreview,
      'status': ?status,
    };
  }

  factory ConnectorDefinitionsAvailabilityResponse.fromMap(Map<String, dynamic> map) {
    return ConnectorDefinitionsAvailabilityResponse(
      isPreview: map['isPreview'] == null ? null : map['isPreview'] as bool,
      status: map['status'] == null ? null : map['status'] as int,
    );
  }
}

