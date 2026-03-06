// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseClusterMaintenanceWindow {
  /// The day of the week on which to apply maintenance updates.
  final pulumi.Input<String> day;
  /// The hour in UTC at which maintenance updates will be applied in 24 hour format.
  final pulumi.Input<String> hour;

  /// Creates a new [GetDatabaseClusterMaintenanceWindow].
  /// [day] The day of the week on which to apply maintenance updates.
  /// [hour] The hour in UTC at which maintenance updates will be applied in 24 hour format.
  const GetDatabaseClusterMaintenanceWindow({
    required this.day,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hour': hour,
    };
  }

  factory GetDatabaseClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetDatabaseClusterMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      hour: pulumi.Input.fromValue(map['hour'] as String),
    );
  }
}

