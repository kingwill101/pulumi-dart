// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTableEntity.
class GetTableEntityResult {
  /// A map of key/value pairs that describe the entity to be stored in the storage table.
  final Map<String, String> entity;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String partitionKey;
  final String rowKey;
  final String storageTableId;

  /// Creates a new [GetTableEntityResult].
  /// [entity] A map of key/value pairs that describe the entity to be stored in the storage table.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [partitionKey] Required.
  /// [rowKey] Required.
  /// [storageTableId] Required.
  GetTableEntityResult({
    required this.entity,
    required this.id,
    required this.partitionKey,
    required this.rowKey,
    required this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': entity,
      'id': id,
      'partitionKey': partitionKey,
      'rowKey': rowKey,
      'storageTableId': storageTableId,
    };
  }

  factory GetTableEntityResult.fromMap(Map<String, dynamic> map) {
    return GetTableEntityResult(
      entity: (map['entity'] as Map).cast<String, String>(),
      id: map['id'] as String,
      partitionKey: map['partitionKey'] as String,
      rowKey: map['rowKey'] as String,
      storageTableId: map['storageTableId'] as String,
    );
  }
}

