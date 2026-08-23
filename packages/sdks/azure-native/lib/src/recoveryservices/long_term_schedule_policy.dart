// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Long term policy schedule.
class LongTermSchedulePolicy {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermSchedulePolicy'.
  final pulumi.Input<String> schedulePolicyType;

  /// Creates a new [LongTermSchedulePolicy].
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  const LongTermSchedulePolicy({
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LongTermSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return LongTermSchedulePolicy(
      schedulePolicyType: pulumi.Input.fromValue(map['schedulePolicyType'] as String),
    );
  }
}
