// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'priority_level_configuration_condition.dart';

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatus {
  /// `conditions` is the current state of "request-priority".
  final List<PriorityLevelConfigurationCondition>? conditions;

  /// Creates a new [PriorityLevelConfigurationStatus].
  /// [conditions] `conditions` is the current state of "request-priority".
  PriorityLevelConfigurationStatus({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<PriorityLevelConfigurationCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
    };
  }

  factory PriorityLevelConfigurationStatus.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationStatus(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<PriorityLevelConfigurationCondition>(map['conditions'], (value) => PriorityLevelConfigurationCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

