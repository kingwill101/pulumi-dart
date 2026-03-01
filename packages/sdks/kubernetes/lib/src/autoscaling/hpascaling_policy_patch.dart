// ignore_for_file: unused_element, unnecessary_cast


/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
class HPAScalingPolicyPatch {
  /// periodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  final int? periodSeconds;
  /// type is used to specify the scaling policy.
  final String? type;
  /// value contains the amount of change which is permitted by the policy. It must be greater than zero
  final int? value;

  /// Creates a new [HPAScalingPolicyPatch].
  /// [periodSeconds] periodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  /// [type] type is used to specify the scaling policy.
  /// [value] value contains the amount of change which is permitted by the policy. It must be greater than zero
  HPAScalingPolicyPatch({
    this.periodSeconds,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'periodSeconds': ?periodSeconds,
      'type': ?type,
      'value': ?value,
    };
  }

  factory HPAScalingPolicyPatch.fromMap(Map<String, dynamic> map) {
    return HPAScalingPolicyPatch(
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as int,
    );
  }
}

