// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_combined_condition_response.dart';

/// The task that is next in line to be executed, if the condition specified evaluated to true.
class EnterpriseCrmEventbusProtoNextTaskResponse {
  /// Combined condition for this task to become an eligible next task. Each of these combined_conditions are joined with logical OR. DEPRECATED: use `condition`
  final pulumi.Input<List<EnterpriseCrmEventbusProtoCombinedConditionResponse>> combinedConditions;
  /// Standard filter expression for this task to become an eligible next task.
  final pulumi.Input<String> condition;
  /// User-provided description intended to give more business context about the next task edge or condition.
  final pulumi.Input<String> description;
  /// User-provided label that is attached to this edge in the UI.
  final pulumi.Input<String> label;
  /// ID of the next task.
  final pulumi.Input<String> taskConfigId;
  /// Task number of the next task.
  final pulumi.Input<String> taskNumber;

  /// Creates a new [EnterpriseCrmEventbusProtoNextTaskResponse].
  /// [combinedConditions] Combined condition for this task to become an eligible next task. Each of these combined_conditions are joined with logical OR. DEPRECATED: use `condition`
  /// [condition] Standard filter expression for this task to become an eligible next task.
  /// [description] User-provided description intended to give more business context about the next task edge or condition.
  /// [label] User-provided label that is attached to this edge in the UI.
  /// [taskConfigId] ID of the next task.
  /// [taskNumber] Task number of the next task.
  EnterpriseCrmEventbusProtoNextTaskResponse({
    required this.combinedConditions,
    required this.condition,
    required this.description,
    required this.label,
    required this.taskConfigId,
    required this.taskNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'combinedConditions': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoCombinedConditionResponse>, List<Map<String, dynamic>>>(combinedConditions, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoCombinedConditionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': condition,
      'description': description,
      'label': label,
      'taskConfigId': taskConfigId,
      'taskNumber': taskNumber,
    };
  }

  factory EnterpriseCrmEventbusProtoNextTaskResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoNextTaskResponse(
      combinedConditions: (pulumi.Input.decodeList<EnterpriseCrmEventbusProtoCombinedConditionResponse>(map['combinedConditions'], (value) => EnterpriseCrmEventbusProtoCombinedConditionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      condition: (map['condition'] as String).input(),
      description: (map['description'] as String).input(),
      label: (map['label'] as String).input(),
      taskConfigId: (map['taskConfigId'] as String).input(),
      taskNumber: (map['taskNumber'] as String).input(),
    );
  }
}

