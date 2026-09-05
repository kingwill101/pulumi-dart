// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSyncGroup.
class GetSyncGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? storageSyncId;

  /// Creates a new [GetSyncGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [storageSyncId] Optional.
  const GetSyncGroupResult({
    this.id,
    this.name,
    this.storageSyncId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'storageSyncId': ?storageSyncId,
    };
  }

  factory GetSyncGroupResult.fromMap(Map<String, dynamic> map) {
    return GetSyncGroupResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageSyncId: (() { final guardedValue = map['storageSyncId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
