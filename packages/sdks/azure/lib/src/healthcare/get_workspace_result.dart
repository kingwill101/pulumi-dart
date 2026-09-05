// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Healthcare Workspace is located.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A map of tags assigned to the Healthcare Workspace.
  final Map<String, String>? tags;

  /// Creates a new [GetWorkspaceResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Healthcare Workspace is located.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A map of tags assigned to the Healthcare Workspace.
  const GetWorkspaceResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
