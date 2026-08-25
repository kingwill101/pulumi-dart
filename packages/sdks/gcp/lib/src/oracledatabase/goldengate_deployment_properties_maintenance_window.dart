// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateDeploymentPropertiesMaintenanceWindow {
  /// Possible values:
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final pulumi.Input<String> day;
  /// Start hour for maintenance period. Hour is in UTC.
  final pulumi.Input<int> startHour;

  /// Creates a new [GoldengateDeploymentPropertiesMaintenanceWindow].
  /// [day] Possible values:
  /// [startHour] Start hour for maintenance period. Hour is in UTC.
  const GoldengateDeploymentPropertiesMaintenanceWindow({
    required this.day,
    required this.startHour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'startHour': startHour,
    };
  }

  factory GoldengateDeploymentPropertiesMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      startHour: pulumi.Input.fromValue((map['startHour'] as num).toInt()),
    );
  }
}
