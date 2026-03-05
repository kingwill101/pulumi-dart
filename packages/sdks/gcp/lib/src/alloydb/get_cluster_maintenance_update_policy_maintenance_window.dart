// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_update_policy_maintenance_window_start_time.dart';

class GetClusterMaintenanceUpdatePolicyMaintenanceWindow {
  /// Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final pulumi.Input<String> day;
  /// Preferred time to start the maintenance operation on the specified day. Maintenance will start within 1 hour of this time.
  final pulumi.Input<List<GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime>> startTimes;

  /// Creates a new [GetClusterMaintenanceUpdatePolicyMaintenanceWindow].
  /// [day] Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc. Possible values: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  /// [startTimes] Preferred time to start the maintenance operation on the specified day. Maintenance will start within 1 hour of this time.
  GetClusterMaintenanceUpdatePolicyMaintenanceWindow({
    required this.day,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'startTimes': pulumi.Input.mapInputValue<List<GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterMaintenanceUpdatePolicyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenanceUpdatePolicyMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime>(map['startTimes']!, (value) => GetClusterMaintenanceUpdatePolicyMaintenanceWindowStartTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

