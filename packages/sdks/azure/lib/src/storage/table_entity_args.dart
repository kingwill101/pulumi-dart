// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_table_entity_table_entity_args_doc}
/// The set of arguments for TableEntity.
/// {@endtemplate}
/// {@macro pulumi_storage_table_entity_table_entity_args_doc}
class TableEntityArgs {
  /// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  final pulumi.Input<Map<String, String>> entity;

  /// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  final pulumi.Input<String> partitionKey;

  /// The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  final pulumi.Input<String> rowKey;

  /// The Storage Share ID in which this file will be placed into.
  final pulumi.Input<String> storageTableId;

  /// Creates a new [TableEntityArgs].
  /// [entity] A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  /// [partitionKey] The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  /// [rowKey] The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  /// [storageTableId] The Storage Share ID in which this file will be placed into.
  TableEntityArgs({
    required this.entity,
    required this.partitionKey,
    required this.rowKey,
    required this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': entity,
      'partitionKey': partitionKey,
      'rowKey': rowKey,
      'storageTableId': storageTableId,
    };
  }

  factory TableEntityArgs.fromMap(Map<String, dynamic> map) {
    return TableEntityArgs(
      entity: pulumi.Input.fromValue(
        (map['entity'] as Map).cast<String, String>(),
      ),
      partitionKey: pulumi.Input.fromValue(map['partitionKey'] as String),
      rowKey: pulumi.Input.fromValue(map['rowKey'] as String),
      storageTableId: pulumi.Input.fromValue(map['storageTableId'] as String),
    );
  }
}
