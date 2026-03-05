// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_task_operation.dart';

/// The if block of storage task operation
class IfCondition {
  /// Condition predicate to evaluate each object. See https://aka.ms/storagetaskconditions for valid properties and operators.
  final pulumi.Input<String> condition;
  /// List of operations to execute when the condition predicate satisfies.
  final pulumi.Input<List<StorageTaskOperation>> operations;

  /// Creates a new [IfCondition].
  /// [condition] Condition predicate to evaluate each object. See https://aka.ms/storagetaskconditions for valid properties and operators.
  /// [operations] List of operations to execute when the condition predicate satisfies.
  IfCondition({
    required this.condition,
    required this.operations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'operations': pulumi.Input.mapInputValue<List<StorageTaskOperation>, List<Map<String, dynamic>>>(operations, (value) => pulumi.Input.encodeList<StorageTaskOperation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IfCondition.fromMap(Map<String, dynamic> map) {
    return IfCondition(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      operations: pulumi.Input.fromValue(pulumi.Input.decodeList<StorageTaskOperation>(map['operations']!, (value) => StorageTaskOperation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

