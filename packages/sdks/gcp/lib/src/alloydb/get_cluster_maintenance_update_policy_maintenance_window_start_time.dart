// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final pulumi.Input<int> hours;

  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final pulumi.Input<int> minutes;

  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final pulumi.Input<int> nanos;

  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final pulumi.Input<int> seconds;

  /// Creates a new [GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  /// [minutes] Minutes of hour of day. Currently, only the value 0 is supported.
  /// [nanos] Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  /// [seconds] Seconds of minutes of the time. Currently, only the value 0 is supported.
  GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime({
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

  factory GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
      nanos: pulumi.Input.fromValue(map['nanos'] as int),
      seconds: pulumi.Input.fromValue(map['seconds'] as int),
    );
  }
}
