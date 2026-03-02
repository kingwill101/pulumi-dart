// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log policy schedule.
class LogSchedulePolicy {
  /// Frequency of the log schedule operation of this policy in minutes.
  final pulumi.Input<int>? scheduleFrequencyInMins;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LogSchedulePolicy'.
  final pulumi.Input<String> schedulePolicyType;

  /// Creates a new [LogSchedulePolicy].
  /// [scheduleFrequencyInMins] Frequency of the log schedule operation of this policy in minutes.
  /// [schedulePolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  LogSchedulePolicy({
    this.scheduleFrequencyInMins,
    required this.schedulePolicyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleFrequencyInMins': ?scheduleFrequencyInMins,
      'schedulePolicyType': schedulePolicyType,
    };
  }

  factory LogSchedulePolicy.fromMap(Map<String, dynamic> map) {
    return LogSchedulePolicy(
      scheduleFrequencyInMins: map['scheduleFrequencyInMins'] == null ? null : (map['scheduleFrequencyInMins']! as int).input(),
      schedulePolicyType: (map['schedulePolicyType'] as String).input(),
    );
  }
}

