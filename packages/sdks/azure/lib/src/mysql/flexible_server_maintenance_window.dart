// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerMaintenanceWindow {
  /// The day of week for maintenance window. Defaults to `0`.
  final pulumi.Input<int?>? dayOfWeek;
  /// The start hour for maintenance window. Defaults to `0`.
  final pulumi.Input<int?>? startHour;
  /// The start minute for maintenance window. Defaults to `0`.
  final pulumi.Input<int?>? startMinute;

  /// Creates a new [FlexibleServerMaintenanceWindow].
  /// [dayOfWeek] The day of week for maintenance window. Defaults to `0`.
  /// [startHour] The start hour for maintenance window. Defaults to `0`.
  /// [startMinute] The start minute for maintenance window. Defaults to `0`.
  const FlexibleServerMaintenanceWindow({
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
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      startHour: (() { final guardedValue = map['startHour']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      startMinute: (() { final guardedValue = map['startMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
