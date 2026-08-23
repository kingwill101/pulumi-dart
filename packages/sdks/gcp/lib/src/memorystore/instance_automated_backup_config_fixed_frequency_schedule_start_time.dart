// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  /// An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int> hours;

  /// Creates a new [InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  const InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
    };
  }

  factory InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(Map<String, dynamic> map) {
    return InstanceAutomatedBackupConfigFixedFrequencyScheduleStartTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
    );
  }
}
