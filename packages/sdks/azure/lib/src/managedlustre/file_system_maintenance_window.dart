// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemMaintenanceWindow {
  /// The day of the week on which the maintenance window will occur. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final pulumi.Input<String> dayOfWeek;

  /// The time of day (in UTC) to start the maintenance window.
  final pulumi.Input<String> timeOfDayInUtc;

  /// Creates a new [FileSystemMaintenanceWindow].
  /// [dayOfWeek] The day of the week on which the maintenance window will occur. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  /// [timeOfDayInUtc] The time of day (in UTC) to start the maintenance window.
  FileSystemMaintenanceWindow({
    required this.dayOfWeek,
    required this.timeOfDayInUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'timeOfDayInUtc': timeOfDayInUtc,
    };
  }

  factory FileSystemMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return FileSystemMaintenanceWindow(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      timeOfDayInUtc: pulumi.Input.fromValue(map['timeOfDayInUtc'] as String),
    );
  }
}
