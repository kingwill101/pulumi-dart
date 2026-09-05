// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTableEntity.
class GetTableEntityResult {
  /// A map of key/value pairs that describe the entity to be stored in the storage table.
  final Map<String, String>? entity;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? partitionKey;
  final String? rowKey;
  final String? storageTableId;

  /// Creates a new [GetTableEntityResult].
  /// [entity] A map of key/value pairs that describe the entity to be stored in the storage table.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [partitionKey] Optional.
  /// [rowKey] Optional.
  /// [storageTableId] Optional.
  const GetTableEntityResult({
    this.entity,
    this.id,
    this.partitionKey,
    this.rowKey,
    this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'id': ?id,
      'partitionKey': ?partitionKey,
      'rowKey': ?rowKey,
      'storageTableId': ?storageTableId,
    };
  }

  factory GetTableEntityResult.fromMap(Map<String, dynamic> map) {
    return GetTableEntityResult(
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rowKey: (() { final guardedValue = map['rowKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageTableId: (() { final guardedValue = map['storageTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
