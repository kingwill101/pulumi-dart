// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMetastoreServiceMaintenanceWindow {
  /// The day of week, when the window starts. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final pulumi.Input<String> dayOfWeek;
  /// The hour of day (0-23) when the window starts.
  final pulumi.Input<int> hourOfDay;

  /// Creates a new [GetMetastoreServiceMaintenanceWindow].
  /// [dayOfWeek] The day of week, when the window starts. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  const GetMetastoreServiceMaintenanceWindow({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'hourOfDay': hourOfDay,
    };
  }

  factory GetMetastoreServiceMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceMaintenanceWindow(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      hourOfDay: pulumi.Input.fromValue(map['hourOfDay'] as int),
    );
  }
}

