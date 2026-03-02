// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_schema_condition_patch.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatusPatch {
  /// `conditions` is a list of the current states of FlowSchema.
  final pulumi.Input<List<FlowSchemaConditionPatch>>? conditions;

  /// Creates a new [FlowSchemaStatusPatch].
  /// [conditions] `conditions` is a list of the current states of FlowSchema.
  FlowSchemaStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<FlowSchemaConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<FlowSchemaConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FlowSchemaStatusPatch.fromMap(Map<String, dynamic> map) {
    return FlowSchemaStatusPatch(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<FlowSchemaConditionPatch>(map['conditions']!, (value) => FlowSchemaConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

