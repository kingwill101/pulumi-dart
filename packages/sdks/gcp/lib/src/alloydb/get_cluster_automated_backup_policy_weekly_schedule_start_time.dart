// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int> hours;
  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final pulumi.Input<int> minutes;
  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final pulumi.Input<int> nanos;
  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final pulumi.Input<int> seconds;

  /// Creates a new [GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of hour of day. Currently, only the value 0 is supported.
  /// [nanos] Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  /// [seconds] Seconds of minutes of the time. Currently, only the value 0 is supported.
  const GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
      'nanos': nanos,
      'seconds': seconds,
    };
  }

  factory GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicyWeeklyScheduleStartTime(
      hours: pulumi.Input.fromValue((map['hours'] as num).toInt()),
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
      nanos: pulumi.Input.fromValue((map['nanos'] as num).toInt()),
      seconds: pulumi.Input.fromValue((map['seconds'] as num).toInt()),
    );
  }
}
