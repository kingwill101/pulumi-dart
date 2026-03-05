// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSync.
class GetSyncResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Incoming traffic policy.
  final String incomingTrafficPolicy;
  /// The Azure Region where the Storage Sync exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Storage Sync.
  final Map<String, String> tags;

  /// Creates a new [GetSyncResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [incomingTrafficPolicy] Incoming traffic policy.
  /// [location] The Azure Region where the Storage Sync exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Storage Sync.
  GetSyncResult({
    required this.id,
    required this.incomingTrafficPolicy,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'incomingTrafficPolicy': incomingTrafficPolicy,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetSyncResult.fromMap(Map<String, dynamic> map) {
    return GetSyncResult(
      id: map['id'] as String,
      incomingTrafficPolicy: map['incomingTrafficPolicy'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

