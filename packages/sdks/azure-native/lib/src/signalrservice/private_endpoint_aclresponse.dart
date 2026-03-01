// ignore_for_file: unused_element, unnecessary_cast


/// ACL for a private endpoint
class PrivateEndpointACLResponse {
  /// Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  final List<String>? allow;
  /// Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  final List<String>? deny;
  /// Name of the private endpoint connection
  final String name;

  /// Creates a new [PrivateEndpointACLResponse].
  /// [allow] Allowed request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  /// [deny] Denied request types. The value can be one or more of: ClientConnection, ServerConnection, RESTAPI.
  /// [name] Name of the private endpoint connection
  PrivateEndpointACLResponse({
    this.allow,
    this.deny,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow,
      'deny': ?deny,
      'name': name,
    };
  }

  factory PrivateEndpointACLResponse.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointACLResponse(
      allow: map['allow'] == null ? null : (map['allow'] as List).cast<String>(),
      deny: map['deny'] == null ? null : (map['deny'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

