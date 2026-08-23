// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal to 0 and
  /// typically must be less than or equal to 23. An API may choose to allow the
  /// value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int> hours;
  /// Minutes of an hour. Must be greater than or equal to 0 and less than or
  /// equal to 59.
  final pulumi.Input<int> minutes;
  /// Fractions of seconds, in nanoseconds. Must be greater than or equal to 0
  /// and less than or equal to 999,999,999.
  final pulumi.Input<int> nanos;
  /// Seconds of a minute. Must be greater than or equal to 0 and typically must
  /// be less than or equal to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  final pulumi.Input<int> seconds;

  /// Creates a new [GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal to 0 and
  /// [minutes] Minutes of an hour. Must be greater than or equal to 0 and less than or
  /// [nanos] Fractions of seconds, in nanoseconds. Must be greater than or equal to 0
  /// [seconds] Seconds of a minute. Must be greater than or equal to 0 and typically must
  const GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime({
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

  factory GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicyMaintenanceExclusionWindowTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
      nanos: pulumi.Input.fromValue(map['nanos'] as int),
      seconds: pulumi.Input.fromValue(map['seconds'] as int),
    );
  }
}
