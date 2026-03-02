// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerMaintenanceWindow {
  /// The day of week for maintenance window. Defaults to `0`.
  final pulumi.Input<int>? dayOfWeek;
  /// The start hour for maintenance window. Defaults to `0`.
  final pulumi.Input<int>? startHour;
  /// The start minute for maintenance window. Defaults to `0`.
  final pulumi.Input<int>? startMinute;

  /// Creates a new [FlexibleServerMaintenanceWindow].
  /// [dayOfWeek] The day of week for maintenance window. Defaults to `0`.
  /// [startHour] The start hour for maintenance window. Defaults to `0`.
  /// [startMinute] The start minute for maintenance window. Defaults to `0`.
  FlexibleServerMaintenanceWindow({
    this.dayOfWeek,
    this.startHour,
    this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'startHour': ?startHour,
      'startMinute': ?startMinute,
    };
  }

  factory FlexibleServerMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return FlexibleServerMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null ? null : (map['dayOfWeek']! as int).input(),
      startHour: map['startHour'] == null ? null : (map['startHour']! as int).input(),
      startMinute: map['startMinute'] == null ? null : (map['startMinute']! as int).input(),
    );
  }
}

