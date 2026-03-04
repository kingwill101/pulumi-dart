// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup {
  /// The grouping to be applied to the remaining entities.
  final pulumi.Input<String> groupBy;

  /// The rollup strategy that is applied to a group of entities.
  final pulumi.Input<String> strategy;

  /// Type of threshold defined for the rule. This is an optional field that only applies when strategy is WORST_STATUS_WINS. Use a threshold to roll up the worst status only after a certain amount of entities are not operational.
  final pulumi.Input<String>? thresholdType;

  /// Threshold value defined for the rule. This optional field is used in combination with thresholdType. If the threshold type is null, the threshold value will be ignored.
  final pulumi.Input<int>? thresholdValue;

  /// Creates a new [WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup].
  /// [groupBy] The grouping to be applied to the remaining entities.
  /// [strategy] The rollup strategy that is applied to a group of entities.
  /// [thresholdType] Type of threshold defined for the rule. This is an optional field that only applies when strategy is WORST_STATUS_WINS. Use a threshold to roll up the worst status only after a certain amount of entities are not operational.
  /// [thresholdValue] Threshold value defined for the rule. This optional field is used in combination with thresholdType. If the threshold type is null, the threshold value will be ignored.
  WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup({
    required this.groupBy,
    required this.strategy,
    this.thresholdType,
    this.thresholdValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupBy': groupBy,
      'strategy': strategy,
      'thresholdType': ?thresholdType,
      'thresholdValue': ?thresholdValue,
    };
  }

  factory WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkloadStatusConfigAutomaticRemainingEntitiesRuleRemainingEntitiesRuleRollup(
      groupBy: pulumi.Input.fromValue(map['groupBy'] as String),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
      thresholdType: (() {
        final guardedValue = map['thresholdType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      thresholdValue: (() {
        final guardedValue = map['thresholdValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
