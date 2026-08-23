// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'priority_level_configuration_condition.dart';

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatus {
  /// `conditions` is the current state of "request-priority".
  final pulumi.Input<List<PriorityLevelConfigurationCondition>>? conditions;

  /// Creates a new [PriorityLevelConfigurationStatus].
  /// [conditions] `conditions` is the current state of "request-priority".
  const PriorityLevelConfigurationStatus({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<PriorityLevelConfigurationCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<PriorityLevelConfigurationCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PriorityLevelConfigurationStatus.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationStatus(
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PriorityLevelConfigurationCondition>(guardedValue, (value) => PriorityLevelConfigurationCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
