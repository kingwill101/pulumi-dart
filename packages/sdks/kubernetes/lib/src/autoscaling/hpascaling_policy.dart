// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
class HPAScalingPolicy {
  /// periodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  final pulumi.Input<int> periodSeconds;
  /// type is used to specify the scaling policy.
  final pulumi.Input<String> type;
  /// value contains the amount of change which is permitted by the policy. It must be greater than zero
  final pulumi.Input<int> value;

  /// Creates a new [HPAScalingPolicy].
  /// [periodSeconds] periodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  /// [type] type is used to specify the scaling policy.
  /// [value] value contains the amount of change which is permitted by the policy. It must be greater than zero
  const HPAScalingPolicy({
    required this.periodSeconds,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periodSeconds': periodSeconds,
      'type': type,
      'value': value,
    };
  }

  factory HPAScalingPolicy.fromMap(Map<String, dynamic> map) {
    return HPAScalingPolicy(
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
