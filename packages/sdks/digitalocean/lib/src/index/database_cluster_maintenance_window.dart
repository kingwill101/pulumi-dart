// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseClusterMaintenanceWindow {
  /// The day of the week on which to apply maintenance updates. May be one of `monday` through `sunday`.
  final pulumi.Input<String> day;
  /// The hour in UTC at which maintenance updates will be applied as a string in 24 hour format, e.g. `13:00`.
  final pulumi.Input<String> hour;

  /// Creates a new [DatabaseClusterMaintenanceWindow].
  /// [day] The day of the week on which to apply maintenance updates. May be one of `monday` through `sunday`.
  /// [hour] The hour in UTC at which maintenance updates will be applied as a string in 24 hour format, e.g. `13:00`.
  const DatabaseClusterMaintenanceWindow({
    required this.day,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hour': hour,
    };
  }

  factory DatabaseClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      hour: pulumi.Input.fromValue(map['hour'] as String),
    );
  }
}

