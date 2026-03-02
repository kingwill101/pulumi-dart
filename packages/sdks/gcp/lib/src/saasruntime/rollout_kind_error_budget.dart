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
  RolloutKindErrorBudget({
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
      allowedCount: map['allowedCount'] == null ? null : (map['allowedCount']! as int).input(),
      allowedPercentage: map['allowedPercentage'] == null ? null : (map['allowedPercentage']! as int).input(),
    );
  }
}

