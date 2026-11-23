// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime {
  /// The hour of the day (integer value between 0 and 23).
  final pulumi.Input<int> hours;
  /// The minute of the hour (integer value between 0 and 59).
  final pulumi.Input<int> minutes;
  /// The second of the minute (integer value between 0 and 59).
  final pulumi.Input<int> seconds;

  /// Creates a new [ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime].
  /// [hours] The hour of the day (integer value between 0 and 23).
  /// [minutes] The minute of the hour (integer value between 0 and 59).
  /// [seconds] The second of the minute (integer value between 0 and 59).
  const ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
      'seconds': seconds,
    };
  }

  factory ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime(
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
      seconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['seconds'])),
    );
  }
}
