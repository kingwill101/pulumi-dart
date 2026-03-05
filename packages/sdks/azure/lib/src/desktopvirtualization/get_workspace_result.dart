// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The description for the Virtual Desktop Workspace.
  final String description;

  /// The friendly name for the Virtual Desktop Workspace.
  final String friendlyName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Azure Region where the Virtual Desktop Workspace exists.
  final String location;
  final String name;

  /// Is public network access enabled?
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;

  /// A mapping of tags assigned to the Virtual Desktop Workspace.
  final Map<String, String> tags;

  /// Creates a new [GetWorkspaceResult].
  /// [description] The description for the Virtual Desktop Workspace.
  /// [friendlyName] The friendly name for the Virtual Desktop Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Virtual Desktop Workspace exists.
  /// [name] Required.
  /// [publicNetworkAccessEnabled] Is public network access enabled?
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Virtual Desktop Workspace.
  GetWorkspaceResult({
    required this.description,
    required this.friendlyName,
    required this.id,
    required this.location,
    required this.name,
    required this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'friendlyName': friendlyName,
      'id': id,
      'location': location,
      'name': name,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      description: map['description'] as String,
      friendlyName: map['friendlyName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
