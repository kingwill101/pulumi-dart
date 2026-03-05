// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyDailyMaintenanceWindow {
  final pulumi.Input<String> duration;
  final pulumi.Input<String> startTime;

  /// Creates a new [GetClusterMaintenancePolicyDailyMaintenanceWindow].
  /// [duration] Required.
  /// [startTime] Required.
  GetClusterMaintenancePolicyDailyMaintenanceWindow({
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'startTime': startTime,
    };
  }

  factory GetClusterMaintenancePolicyDailyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyDailyMaintenanceWindow(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

