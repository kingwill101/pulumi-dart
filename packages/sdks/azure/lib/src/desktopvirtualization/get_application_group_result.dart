// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApplicationGroup.
class GetApplicationGroupResult {
  /// The description of the Application Group.
  final String description;

  /// The friendly name of the Application Group.
  final String friendlyName;

  /// The Virtual Desktop Host Pool ID the Application Group is associated to.
  final String hostPoolId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region where the Application Group exists.
  final String location;
  final String name;
  final String resourceGroupName;

  /// A mapping of tags assigned to the Application Group.
  final Map<String, String> tags;

  /// The type of Application Group (`RemoteApp` or `Desktop`).
  final String type;

  /// The Virtual Desktop Workspace ID the Application Group is associated to.
  final String workspaceId;

  /// Creates a new [GetApplicationGroupResult].
  /// [description] The description of the Application Group.
  /// [friendlyName] The friendly name of the Application Group.
  /// [hostPoolId] The Virtual Desktop Host Pool ID the Application Group is associated to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Application Group exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Application Group.
  /// [type] The type of Application Group (`RemoteApp` or `Desktop`).
  /// [workspaceId] The Virtual Desktop Workspace ID the Application Group is associated to.
  GetApplicationGroupResult({
    required this.description,
    required this.friendlyName,
    required this.hostPoolId,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.type,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'friendlyName': friendlyName,
      'hostPoolId': hostPoolId,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'type': type,
      'workspaceId': workspaceId,
    };
  }

  factory GetApplicationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupResult(
      description: map['description'] as String,
      friendlyName: map['friendlyName'] as String,
      hostPoolId: map['hostPoolId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}
