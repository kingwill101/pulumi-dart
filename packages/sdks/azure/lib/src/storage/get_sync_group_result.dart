// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSyncGroup.
class GetSyncGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String storageSyncId;

  /// Creates a new [GetSyncGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [storageSyncId] Required.
  GetSyncGroupResult({
    required this.id,
    required this.name,
    required this.storageSyncId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'storageSyncId': storageSyncId,
    };
  }

  factory GetSyncGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSyncGroupResult(
      id: map['id'] as String,
      name: map['name'] as String,
      storageSyncId: map['storageSyncId'] as String,
    );
  }
}

