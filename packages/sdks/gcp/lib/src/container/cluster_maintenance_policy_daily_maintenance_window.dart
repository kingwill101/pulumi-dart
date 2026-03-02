// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyDailyMaintenanceWindow {
  final pulumi.Input<String>? duration;
  final pulumi.Input<String> startTime;

  /// Creates a new [ClusterMaintenancePolicyDailyMaintenanceWindow].
  /// [duration] Optional.
  /// [startTime] Required.
  ClusterMaintenancePolicyDailyMaintenanceWindow({
    this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'startTime': startTime,
    };
  }

  factory ClusterMaintenancePolicyDailyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyDailyMaintenanceWindow(
      duration: map['duration'] == null ? null : (map['duration']! as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

