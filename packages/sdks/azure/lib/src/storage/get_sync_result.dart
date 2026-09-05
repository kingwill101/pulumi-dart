// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSync.
class GetSyncResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Incoming traffic policy.
  final String? incomingTrafficPolicy;
  /// The Azure Region where the Storage Sync exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Storage Sync.
  final Map<String, String>? tags;

  /// Creates a new [GetSyncResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [incomingTrafficPolicy] Incoming traffic policy.
  /// [location] The Azure Region where the Storage Sync exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Storage Sync.
  const GetSyncResult({
    this.id,
    this.incomingTrafficPolicy,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'incomingTrafficPolicy': ?incomingTrafficPolicy,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetSyncResult.fromMap(Map<String, dynamic> map) {
    return GetSyncResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      incomingTrafficPolicy: (() { final guardedValue = map['incomingTrafficPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
