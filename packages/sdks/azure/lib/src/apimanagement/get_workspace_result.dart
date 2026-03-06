// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  final String apiManagementId;
  /// The display name of the API Management Workspace.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetWorkspaceResult].
  /// [apiManagementId] Required.
  /// [displayName] The display name of the API Management Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  const GetWorkspaceResult({
    required this.apiManagementId,
    required this.displayName,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'displayName': displayName,
      'id': id,
      'name': name,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      apiManagementId: map['apiManagementId'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}

