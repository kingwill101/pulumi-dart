// ignore_for_file: unused_element, unnecessary_cast


/// The Private Endpoint network resource that is linked to the Private Endpoint connection
class PrivateEndpoint {
  /// Gets or sets id
  final String? id;

  /// Creates a new [PrivateEndpoint].
  /// [id] Gets or sets id
  PrivateEndpoint({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory PrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return PrivateEndpoint(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

