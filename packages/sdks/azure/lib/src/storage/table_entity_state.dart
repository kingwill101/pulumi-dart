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
    pulumi.Output<Map<String, String>>? entity,
    pulumi.Output<String>? partitionKey,
    pulumi.Output<String>? rowKey,
    pulumi.Output<String>? storageTableId,
  }) :
      entity = pulumi.Input.asOptionalInput<Map<String, String>>(entity),
      partitionKey = pulumi.Input.asOptionalInput<String>(partitionKey),
      rowKey = pulumi.Input.asOptionalInput<String>(rowKey),
      storageTableId = pulumi.Input.asOptionalInput<String>(storageTableId);

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
      entity: map['entity'] == null ? null : pulumi.Output.create<Map<String, String>>((map['entity'] as Map).cast<String, String>()),
      partitionKey: map['partitionKey'] == null ? null : pulumi.Output.create<String>(map['partitionKey'] as String),
      rowKey: map['rowKey'] == null ? null : pulumi.Output.create<String>(map['rowKey'] as String),
      storageTableId: map['storageTableId'] == null ? null : pulumi.Output.create<String>(map['storageTableId'] as String),
    );
  }
}

