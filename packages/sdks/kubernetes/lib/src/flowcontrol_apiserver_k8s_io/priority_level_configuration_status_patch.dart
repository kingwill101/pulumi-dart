// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'priority_level_configuration_condition_patch.dart';

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatusPatch {
  /// `conditions` is the current state of "request-priority".
  final pulumi.Input<List<PriorityLevelConfigurationConditionPatch>>? conditions;

  /// Creates a new [PriorityLevelConfigurationStatusPatch].
  /// [conditions] `conditions` is the current state of "request-priority".
  PriorityLevelConfigurationStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PriorityLevelConfigurationConditionPatch>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PriorityLevelConfigurationConditionPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PriorityLevelConfigurationStatusPatch.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationStatusPatch(
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<PriorityLevelConfigurationConditionPatch>(map['conditions']!, (value) => PriorityLevelConfigurationConditionPatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

