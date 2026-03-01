// ignore_for_file: unused_element, unnecessary_cast


/// Private endpoint details
class PrivateEndpointResponse {
  /// Resource id of the private endpoint.
  final String id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Resource id of the private endpoint.
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

