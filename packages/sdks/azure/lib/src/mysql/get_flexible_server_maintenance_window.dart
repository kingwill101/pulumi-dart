// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFlexibleServerMaintenanceWindow {
  /// The day of week of the maintenance window.
  final pulumi.Input<int> dayOfWeek;
  /// The start hour of the maintenance window.
  final pulumi.Input<int> startHour;
  /// The start minute of the maintenance window.
  final pulumi.Input<int> startMinute;

  /// Creates a new [GetFlexibleServerMaintenanceWindow].
  /// [dayOfWeek] The day of week of the maintenance window.
  /// [startHour] The start hour of the maintenance window.
  /// [startMinute] The start minute of the maintenance window.
  const GetFlexibleServerMaintenanceWindow({
    required this.dayOfWeek,
    required this.startHour,
    required this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startHour': startHour,
      'startMinute': startMinute,
    };
  }

  factory GetFlexibleServerMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerMaintenanceWindow(
      dayOfWeek: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['dayOfWeek'])),
      startHour: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['startHour'])),
      startMinute: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['startMinute'])),
    );
  }
}
