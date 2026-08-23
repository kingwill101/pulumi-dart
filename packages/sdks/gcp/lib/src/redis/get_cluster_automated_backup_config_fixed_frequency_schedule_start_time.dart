// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23.
  /// An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int> hours;

  /// Creates a new [GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less than or equal to 23.
  const GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime({
    required this.hours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
    };
  }

  factory GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupConfigFixedFrequencyScheduleStartTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
    );
  }
}
