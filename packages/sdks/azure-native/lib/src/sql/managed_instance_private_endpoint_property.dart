// ignore_for_file: unused_element, unnecessary_cast


class ManagedInstancePrivateEndpointProperty {
  /// Resource id of the private endpoint.
  final String? id;

  /// Creates a new [ManagedInstancePrivateEndpointProperty].
  /// [id] Resource id of the private endpoint.
  ManagedInstancePrivateEndpointProperty({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ManagedInstancePrivateEndpointProperty.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePrivateEndpointProperty(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

