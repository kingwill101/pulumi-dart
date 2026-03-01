// ignore_for_file: unused_element, unnecessary_cast


class ManagedInstancePrivateEndpointPropertyResponse {
  /// Resource id of the private endpoint.
  final String? id;

  /// Creates a new [ManagedInstancePrivateEndpointPropertyResponse].
  /// [id] Resource id of the private endpoint.
  ManagedInstancePrivateEndpointPropertyResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ManagedInstancePrivateEndpointPropertyResponse.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePrivateEndpointPropertyResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

