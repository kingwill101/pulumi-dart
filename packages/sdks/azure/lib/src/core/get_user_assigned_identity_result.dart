// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserAssignedIdentity.
class GetUserAssignedIdentityResult {
  /// The Client ID of the User Assigned Identity.
  final String clientId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The isolation scope for the User Assigned Identity.
  final String isolationScope;
  /// The Azure location where the User Assigned Identity exists.
  final String location;
  final String name;
  /// The Service Principal ID of the User Assigned Identity.
  final String principalId;
  final String resourceGroupName;
  /// A mapping of tags assigned to the User Assigned Identity.
  final Map<String, String> tags;
  /// The Tenant ID of the User Assigned Identity.
  final String tenantId;

  /// Creates a new [GetUserAssignedIdentityResult].
  /// [clientId] The Client ID of the User Assigned Identity.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isolationScope] The isolation scope for the User Assigned Identity.
  /// [location] The Azure location where the User Assigned Identity exists.
  /// [name] Required.
  /// [principalId] The Service Principal ID of the User Assigned Identity.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the User Assigned Identity.
  /// [tenantId] The Tenant ID of the User Assigned Identity.
  const GetUserAssignedIdentityResult({
    required this.clientId,
    required this.id,
    required this.isolationScope,
    required this.location,
    required this.name,
    required this.principalId,
    required this.resourceGroupName,
    required this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'id': id,
      'isolationScope': isolationScope,
      'location': location,
      'name': name,
      'principalId': principalId,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'tenantId': tenantId,
    };
  }

  factory GetUserAssignedIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetUserAssignedIdentityResult(
      clientId: map['clientId'] as String,
      id: map['id'] as String,
      isolationScope: map['isolationScope'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}
