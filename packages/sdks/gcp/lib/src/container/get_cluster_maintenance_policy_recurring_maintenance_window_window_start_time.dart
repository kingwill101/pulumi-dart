// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime {
  final pulumi.Input<int> hours;
  final pulumi.Input<int> minutes;
  final pulumi.Input<int> seconds;

  /// Creates a new [GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime].
  /// [hours] Required.
  /// [minutes] Required.
  /// [seconds] Required.
  const GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime({
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

  factory GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime(
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
      seconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['seconds'])),
    );
  }
}
