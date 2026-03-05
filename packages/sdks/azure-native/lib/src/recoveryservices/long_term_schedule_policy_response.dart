// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Long term policy schedule.
class LongTermSchedulePolicyResponse {
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermSchedulePolicy'.
  final pulumi.Input<String> schedulePolicyType;

  /// Creates a new [LongTermSchedulePolicyResponse].
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  LongTermSchedulePolicyResponse({
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LongTermSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return LongTermSchedulePolicyResponse(
      schedulePolicyType: pulumi.Input.fromValue(map['schedulePolicyType'] as String),
    );
  }
}

