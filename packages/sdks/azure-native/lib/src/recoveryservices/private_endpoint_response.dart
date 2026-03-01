// ignore_for_file: unused_element, unnecessary_cast


/// The Private Endpoint network resource that is linked to the Private Endpoint connection.
class PrivateEndpointResponse {
  /// Gets or sets id.
  final String id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Gets or sets id.
  PrivateEndpointResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: map['id'] as String,
    );
  }
}

