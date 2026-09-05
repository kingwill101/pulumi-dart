// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApplicationGroup.
class GetApplicationGroupResult {
  /// The description of the Application Group.
  final String? description;
  /// The friendly name of the Application Group.
  final String? friendlyName;
  /// The Virtual Desktop Host Pool ID the Application Group is associated to.
  final String? hostPoolId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Application Group exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Application Group.
  final Map<String, String>? tags;
  /// The type of Application Group (`RemoteApp` or `Desktop`).
  final String? type;
  /// The Virtual Desktop Workspace ID the Application Group is associated to.
  final String? workspaceId;

  /// Creates a new [GetApplicationGroupResult].
  /// [description] The description of the Application Group.
  /// [friendlyName] The friendly name of the Application Group.
  /// [hostPoolId] The Virtual Desktop Host Pool ID the Application Group is associated to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Application Group exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Application Group.
  /// [type] The type of Application Group (`RemoteApp` or `Desktop`).
  /// [workspaceId] The Virtual Desktop Workspace ID the Application Group is associated to.
  const GetApplicationGroupResult({
    this.description,
    this.friendlyName,
    this.hostPoolId,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.type,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'friendlyName': ?friendlyName,
      'hostPoolId': ?hostPoolId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'type': ?type,
      'workspaceId': ?workspaceId,
    };
  }

  factory GetApplicationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostPoolId: (() { final guardedValue = map['hostPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
