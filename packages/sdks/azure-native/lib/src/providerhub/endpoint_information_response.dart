// ignore_for_file: unused_element, unnecessary_cast


class EndpointInformationResponse {
  /// The endpoint.
  final String? endpoint;
  /// The endpoint type.
  final String? endpointType;
  /// The schema version.
  final String? schemaVersion;

  /// Creates a new [EndpointInformationResponse].
  /// [endpoint] The endpoint.
  /// [endpointType] The endpoint type.
  /// [schemaVersion] The schema version.
  EndpointInformationResponse({
    this.endpoint,
    this.endpointType,
    this.schemaVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'endpointType': ?endpointType,
      'schemaVersion': ?schemaVersion,
    };
  }

  factory EndpointInformationResponse.fromMap(Map<String, dynamic> map) {
    return EndpointInformationResponse(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      endpointType: map['endpointType'] == null ? null : map['endpointType'] as String,
      schemaVersion: map['schemaVersion'] == null ? null : map['schemaVersion'] as String,
    );
  }
}

