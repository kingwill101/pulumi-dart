// ignore_for_file: unused_element, unnecessary_cast


class PrivateEndpointPropertyResponse {
  /// Resource id of the private endpoint.
  final String? id;

  /// Creates a new [PrivateEndpointPropertyResponse].
  /// [id] Resource id of the private endpoint.
  PrivateEndpointPropertyResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointPropertyResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointPropertyResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

