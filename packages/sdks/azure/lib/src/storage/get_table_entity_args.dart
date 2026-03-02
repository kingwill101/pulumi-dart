// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_table_entity_get_table_entity_args_doc}
/// Arguments for getTableEntity.
/// {@endtemplate}
/// {@macro pulumi_storage_get_table_entity_get_table_entity_args_doc}
class GetTableEntityArgs {
  /// The key for the partition where the entity will be retrieved.
  final pulumi.Input<String> partitionKey;
  /// The key for the row where the entity will be retrieved.
  final pulumi.Input<String> rowKey;
  /// The Storage Table ID where the entity exists.
  final pulumi.Input<String> storageTableId;

  /// Creates a new [GetTableEntityArgs].
  /// [partitionKey] The key for the partition where the entity will be retrieved.
  /// [rowKey] The key for the row where the entity will be retrieved.
  /// [storageTableId] The Storage Table ID where the entity exists.
  GetTableEntityArgs({
    required this.partitionKey,
    required this.rowKey,
    required this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKey': partitionKey,
      'rowKey': rowKey,
      'storageTableId': storageTableId,
    };
  }

  factory GetTableEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetTableEntityArgs(
      partitionKey: (map['partitionKey'] as String).input(),
      rowKey: (map['rowKey'] as String).input(),
      storageTableId: (map['storageTableId'] as String).input(),
    );
  }
}

