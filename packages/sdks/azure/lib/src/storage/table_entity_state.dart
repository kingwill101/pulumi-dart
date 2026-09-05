// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TableEntity resources.
class TableEntityState {
  /// A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  final pulumi.Input<Map<String, String>?>? entity;
  /// The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? partitionKey;
  /// The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? rowKey;
  /// The Storage Share ID in which this file will be placed into.
  final pulumi.Input<String?>? storageTableId;

  /// Creates a new [TableEntityState].
  /// [entity] A map of key/value pairs that describe the entity to be inserted/merged in to the storage table.
  /// [partitionKey] The key for the partition where the entity will be inserted/merged. Changing this forces a new resource to be created.
  /// [rowKey] The key for the row where the entity will be inserted/merged. Changing this forces a new resource to be created.
  /// [storageTableId] The Storage Share ID in which this file will be placed into.
  const TableEntityState({
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
      entity: (() { final guardedValue = map['entity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      partitionKey: (() { final guardedValue = map['partitionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rowKey: (() { final guardedValue = map['rowKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTableId: (() { final guardedValue = map['storageTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
