// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// The client ID (application ID) linked to the authenticated principal, or the application used for delegated authentication.
  final String clientId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The object ID of the authenticated principal.
  final String objectId;
  /// The tenant ID of the authenticated principal.
  final String tenantId;

  /// Creates a new [GetClientConfigResult].
  /// [clientId] The client ID (application ID) linked to the authenticated principal, or the application used for delegated authentication.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] The object ID of the authenticated principal.
  /// [tenantId] The tenant ID of the authenticated principal.
  const GetClientConfigResult({
    required this.clientId,
    required this.id,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'id': id,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      clientId: map['clientId'] as String,
      id: map['id'] as String,
      objectId: map['objectId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

