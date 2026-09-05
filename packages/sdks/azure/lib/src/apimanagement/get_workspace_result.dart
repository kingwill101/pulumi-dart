// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  final String? apiManagementId;
  /// The display name of the API Management Workspace.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;

  /// Creates a new [GetWorkspaceResult].
  /// [apiManagementId] Optional.
  /// [displayName] The display name of the API Management Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  const GetWorkspaceResult({
    this.apiManagementId,
    this.displayName,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      apiManagementId: (() { final guardedValue = map['apiManagementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
