// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspaceSetting.
class GetWorkspaceSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Resource Id
  final String id;

  /// Resource name
  final String name;

  /// All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  final String scope;

  /// Resource type
  final String type;

  /// The full Azure ID of the workspace to save the data in
  final String workspaceId;

  /// Creates a new [GetWorkspaceSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [scope] All the VMs in this scope will send their security data to the mentioned workspace unless overridden by a setting with more specific scope
  /// [type] Resource type
  /// [workspaceId] The full Azure ID of the workspace to save the data in
  GetWorkspaceSettingResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.scope,
    required this.type,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'scope': scope,
      'type': type,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceSettingResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      scope: map['scope'] as String,
      type: map['type'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
