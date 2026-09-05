// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkspace.
class GetWorkspaceResult {
  /// The description for the Virtual Desktop Workspace.
  final String? description;
  /// The friendly name for the Virtual Desktop Workspace.
  final String? friendlyName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Virtual Desktop Workspace exists.
  final String? location;
  final String? name;
  /// Is public network access enabled?
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Virtual Desktop Workspace.
  final Map<String, String>? tags;

  /// Creates a new [GetWorkspaceResult].
  /// [description] The description for the Virtual Desktop Workspace.
  /// [friendlyName] The friendly name for the Virtual Desktop Workspace.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Virtual Desktop Workspace exists.
  /// [name] Optional.
  /// [publicNetworkAccessEnabled] Is public network access enabled?
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Virtual Desktop Workspace.
  const GetWorkspaceResult({
    this.description,
    this.friendlyName,
    this.id,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'friendlyName': ?friendlyName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetWorkspaceResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
