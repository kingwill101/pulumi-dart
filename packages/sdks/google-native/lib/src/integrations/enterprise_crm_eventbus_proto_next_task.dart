// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_combined_condition.dart';

/// The task that is next in line to be executed, if the condition specified evaluated to true.
class EnterpriseCrmEventbusProtoNextTask {
  /// Combined condition for this task to become an eligible next task. Each of these combined_conditions are joined with logical OR. DEPRECATED: use `condition`
  final pulumi.Input<List<EnterpriseCrmEventbusProtoCombinedCondition>>? combinedConditions;
  /// Standard filter expression for this task to become an eligible next task.
  final pulumi.Input<String>? condition;
  /// User-provided description intended to give more business context about the next task edge or condition.
  final pulumi.Input<String>? description;
  /// User-provided label that is attached to this edge in the UI.
  final pulumi.Input<String>? label;
  /// ID of the next task.
  final pulumi.Input<String>? taskConfigId;
  /// Task number of the next task.
  final pulumi.Input<String>? taskNumber;

  /// Creates a new [EnterpriseCrmEventbusProtoNextTask].
  /// [combinedConditions] Combined condition for this task to become an eligible next task. Each of these combined_conditions are joined with logical OR. DEPRECATED: use `condition`
  /// [condition] Standard filter expression for this task to become an eligible next task.
  /// [description] User-provided description intended to give more business context about the next task edge or condition.
  /// [label] User-provided label that is attached to this edge in the UI.
  /// [taskConfigId] ID of the next task.
  /// [taskNumber] Task number of the next task.
  const EnterpriseCrmEventbusProtoNextTask({
    this.combinedConditions,
    this.condition,
    this.description,
    this.label,
    this.taskConfigId,
    this.taskNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combinedConditions': ?pulumi.Input.mapOptionalInputValue<List<EnterpriseCrmEventbusProtoCombinedCondition>, List<Map<String, dynamic>>>(combinedConditions, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoCombinedCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
      'description': ?description,
      'label': ?label,
      'taskConfigId': ?taskConfigId,
      'taskNumber': ?taskNumber,
    };
  }

  factory EnterpriseCrmEventbusProtoNextTask.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNextTask(
      combinedConditions: (() { final guardedValue = map['combinedConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoCombinedCondition>(guardedValue, (value) => EnterpriseCrmEventbusProtoCombinedCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskConfigId: (() { final guardedValue = map['taskConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskNumber: (() { final guardedValue = map['taskNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
