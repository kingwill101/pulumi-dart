// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClientConfig.
class GetClientConfigResult {
  /// The client ID (application ID) linked to the authenticated principal, or the application used for delegated authentication.
  final String? clientId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The object ID of the authenticated principal.
  final String? objectId;
  /// The tenant ID of the authenticated principal.
  final String? tenantId;

  /// Creates a new [GetClientConfigResult].
  /// [clientId] The client ID (application ID) linked to the authenticated principal, or the application used for delegated authentication.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] The object ID of the authenticated principal.
  /// [tenantId] The tenant ID of the authenticated principal.
  const GetClientConfigResult({
    this.clientId,
    this.id,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'id': ?id,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory GetClientConfigResult.fromMap(Map<String, dynamic> map) {
    return GetClientConfigResult(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
