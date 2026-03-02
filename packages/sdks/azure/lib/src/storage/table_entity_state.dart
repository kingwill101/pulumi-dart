// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TableEntity resources.
class TableEntityState {
  /// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  final pulumi.Input<Map<String, String>>? entity;
  /// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  final pulumi.Input<String>? partitionKey;
  /// The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  final pulumi.Input<String>? rowKey;
  /// The Storage Share ID in which this file will be placed into.
  final pulumi.Input<String>? storageTableId;

  /// Creates a new [TableEntityState].
  /// [entity] A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  /// [partitionKey] The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  /// [rowKey] The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  /// [storageTableId] The Storage Share ID in which this file will be placed into.
  TableEntityState({
    this.entity,
    this.partitionKey,
    this.rowKey,
    this.storageTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entity': ?entity,
      'partitionKey': ?partitionKey,
      'rowKey': ?rowKey,
      'storageTableId': ?storageTableId,
    };
  }

  factory TableEntityState.fromMap(Map<String, dynamic> map) {
    return TableEntityState(
      entity: map['entity'] == null ? null : ((map['entity']! as Map).cast<String, String>()).input(),
      partitionKey: map['partitionKey'] == null ? null : (map['partitionKey']! as String).input(),
      rowKey: map['rowKey'] == null ? null : (map['rowKey']! as String).input(),
      storageTableId: map['storageTableId'] == null ? null : (map['storageTableId']! as String).input(),
    );
  }
}

