// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_operation.dart';

/// The else block of storage task operation
class ElseCondition {
  /// List of operations to execute in the else block
  final pulumi.Input<List<StorageTaskOperation>> operations;

  /// Creates a new [ElseCondition].
  /// [operations] List of operations to execute in the else block
  const ElseCondition({
    required this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': pulumi.Input.mapInputValue<List<StorageTaskOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<StorageTaskOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ElseCondition.fromMap(Map<String, dynamic> map) {
    return ElseCondition(
      operations: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageTaskOperation>(map['operations']!, (value) => StorageTaskOperation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

