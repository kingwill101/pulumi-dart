// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log policy schedule.
class LogSchedulePolicyResponse {
  /// Frequency of the log schedule operation of this policy in minutes.
  final pulumi.Input<int>? scheduleFrequencyInMins;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LogSchedulePolicy'.
  final pulumi.Input<String> schedulePolicyType;

  /// Creates a new [LogSchedulePolicyResponse].
  /// [scheduleFrequencyInMins] Frequency of the log schedule operation of this policy in minutes.
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  const LogSchedulePolicyResponse({
    this.scheduleFrequencyInMins,
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleFrequencyInMins': ?scheduleFrequencyInMins,
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LogSchedulePolicyResponse.fromMap(Map<String, dynamic> map) {
    return LogSchedulePolicyResponse(
      scheduleFrequencyInMins: (() { final guardedValue = map['scheduleFrequencyInMins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      schedulePolicyType: pulumi.Input.fromValue(map['schedulePolicyType'] as String),
    );
  }
}

