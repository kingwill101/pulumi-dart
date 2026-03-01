// ignore_for_file: unused_element, unnecessary_cast


class GetLocksLock {
  /// The ID of the locked entity.
  final int entityId;
  /// The label of the locked entity.
  final String entityLabel;
  /// The type of the locked entity.
  final String entityType;
  /// The URL of the locked entity.
  final String entityUrl;
  /// The unique ID of the Lock.
  final int id;
  /// The type of lock.
  final String lockType;

  /// Creates a new [GetLocksLock].
  /// [entityId] The ID of the locked entity.
  /// [entityLabel] The label of the locked entity.
  /// [entityType] The type of the locked entity.
  /// [entityUrl] The URL of the locked entity.
  /// [id] The unique ID of the Lock.
  /// [lockType] The type of lock.
  GetLocksLock({
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

  factory GetLocksLock.fromMap(Map<String, dynamic> map) {
    return GetLocksLock(
      entityId: map['entityId'] as int,
      entityLabel: map['entityLabel'] as String,
      entityType: map['entityType'] as String,
      entityUrl: map['entityUrl'] as String,
      id: map['id'] as int,
      lockType: map['lockType'] as String,
    );
  }
}

