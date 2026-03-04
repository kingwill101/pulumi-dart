// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
class HPAScalingPolicyAutoscalingV2beta2 {
  /// PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  final pulumi.Input<int> periodSeconds;

  /// Type is used to specify the scaling policy.
  final pulumi.Input<String> type;

  /// Value contains the amount of change which is permitted by the policy. It must be greater than zero
  final pulumi.Input<int> value;

  /// Creates a new [HPAScalingPolicyAutoscalingV2beta2].
  /// [periodSeconds] PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  /// [type] Type is used to specify the scaling policy.
  /// [value] Value contains the amount of change which is permitted by the policy. It must be greater than zero
  HPAScalingPolicyAutoscalingV2beta2({
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

  factory HPAScalingPolicyAutoscalingV2beta2.fromMap(Map<String, dynamic> map) {
    return HPAScalingPolicyAutoscalingV2beta2(
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
