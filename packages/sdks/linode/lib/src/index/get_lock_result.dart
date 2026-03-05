// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getLock.
class GetLockResult {
  /// The ID of the locked entity.
  final int entityId;

  /// The label of the locked entity.
  final String entityLabel;

  /// The type of the locked entity.
  final String entityType;

  /// The URL of the locked entity.
  final String entityUrl;
  final int id;

  /// The type of lock.
  final String lockType;

  /// Creates a new [GetLockResult].
  /// [entityId] The ID of the locked entity.
  /// [entityLabel] The label of the locked entity.
  /// [entityType] The type of the locked entity.
  /// [entityUrl] The URL of the locked entity.
  /// [id] Required.
  /// [lockType] The type of lock.
  GetLockResult({
    required this.entityId,
    required this.entityLabel,
    required this.entityType,
    required this.entityUrl,
    required this.id,
    required this.lockType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityLabel': entityLabel,
      'entityType': entityType,
      'entityUrl': entityUrl,
      'id': id,
      'lockType': lockType,
    };
  }

  factory GetLockResult.fromMap(Map<String, dynamic> map) {
    return GetLockResult(
      entityId: map['entityId'] as int,
      entityLabel: map['entityLabel'] as String,
      entityType: map['entityType'] as String,
      entityUrl: map['entityUrl'] as String,
      id: map['id'] as int,
      lockType: map['lockType'] as String,
    );
  }
}
