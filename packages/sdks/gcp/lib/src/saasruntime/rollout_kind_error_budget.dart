// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RolloutKindErrorBudget {
  /// The maximum number of failed units allowed in a location without pausing
  /// the rollout.
  final pulumi.Input<int>? allowedCount;
  /// The maximum percentage of units allowed to fail (0, 100] within a location
  /// without pausing the rollout.
  final pulumi.Input<int>? allowedPercentage;

  /// Creates a new [RolloutKindErrorBudget].
  /// [allowedCount] The maximum number of failed units allowed in a location without pausing
  /// [allowedPercentage] The maximum percentage of units allowed to fail (0, 100] within a location
  const RolloutKindErrorBudget({
    this.allowedCount,
    this.allowedPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedCount': ?allowedCount,
      'allowedPercentage': ?allowedPercentage,
    };
  }

  factory RolloutKindErrorBudget.fromMap(Map<String, dynamic> map) {
    return RolloutKindErrorBudget(
      allowedCount: (() { final guardedValue = map['allowedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      allowedPercentage: (() { final guardedValue = map['allowedPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

