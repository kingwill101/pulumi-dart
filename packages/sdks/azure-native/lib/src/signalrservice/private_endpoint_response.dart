// ignore_for_file: unused_element, unnecessary_cast


/// Private endpoint
class PrivateEndpointResponse {
  /// Full qualified Id of the private endpoint
  final String? id;

  /// Creates a new [PrivateEndpointResponse].
  /// [id] Full qualified Id of the private endpoint
  PrivateEndpointResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpointResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

