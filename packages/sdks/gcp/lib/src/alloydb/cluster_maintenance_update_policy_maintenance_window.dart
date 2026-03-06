// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_update_policy_maintenance_window_start_time.dart';

class ClusterMaintenanceUpdatePolicyMaintenanceWindow {
  /// Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
  /// Possible values are: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String> day;
  /// Preferred time to start the maintenance operation on the specified day. Maintenance will start within 1 hour of this time.
  /// Structure is documented below.
  final pulumi.Input<ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime> startTime;

  /// Creates a new [ClusterMaintenanceUpdatePolicyMaintenanceWindow].
  /// [day] Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
  /// [startTime] Preferred time to start the maintenance operation on the specified day. Maintenance will start within 1 hour of this time.
  const ClusterMaintenanceUpdatePolicyMaintenanceWindow({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'startTime': pulumi.Input.mapInputValue<ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceUpdatePolicyMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      startTime: pulumi.Input.fromValue(ClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

