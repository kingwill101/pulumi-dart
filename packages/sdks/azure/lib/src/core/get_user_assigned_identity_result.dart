// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserAssignedIdentity.
class GetUserAssignedIdentityResult {
  /// The Client ID of the User Assigned Identity.
  final String? clientId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The isolation scope for the User Assigned Identity.
  final String? isolationScope;
  /// The Azure location where the User Assigned Identity exists.
  final String? location;
  final String? name;
  /// The Service Principal ID of the User Assigned Identity.
  final String? principalId;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the User Assigned Identity.
  final Map<String, String>? tags;
  /// The Tenant ID of the User Assigned Identity.
  final String? tenantId;

  /// Creates a new [GetUserAssignedIdentityResult].
  /// [clientId] The Client ID of the User Assigned Identity.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isolationScope] The isolation scope for the User Assigned Identity.
  /// [location] The Azure location where the User Assigned Identity exists.
  /// [name] Optional.
  /// [principalId] The Service Principal ID of the User Assigned Identity.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the User Assigned Identity.
  /// [tenantId] The Tenant ID of the User Assigned Identity.
  const GetUserAssignedIdentityResult({
    this.clientId,
    this.id,
    this.isolationScope,
    this.location,
    this.name,
    this.principalId,
    this.resourceGroupName,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'id': ?id,
      'isolationScope': ?isolationScope,
      'location': ?location,
      'name': ?name,
      'principalId': ?principalId,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory GetUserAssignedIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetUserAssignedIdentityResult(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isolationScope: (() { final guardedValue = map['isolationScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
