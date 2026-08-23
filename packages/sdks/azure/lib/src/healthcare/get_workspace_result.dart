// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Healthcare Workspace is located.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A map of tags assigned to the Healthcare Workspace.
  final Map<String, String> tags;

  /// Creates a new [GetWorkspaceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Healthcare Workspace is located.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A map of tags assigned to the Healthcare Workspace.
  const GetWorkspaceResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
