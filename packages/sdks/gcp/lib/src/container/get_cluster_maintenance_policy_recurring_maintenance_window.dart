// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_policy_recurring_maintenance_window_delay_until.dart';
import 'get_cluster_maintenance_policy_recurring_maintenance_window_window_start_time.dart';

class GetClusterMaintenancePolicyRecurringMaintenanceWindow {
  final pulumi.Input<List<GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil>> delayUntils;
  final pulumi.Input<String> recurrence;
  final pulumi.Input<String> windowDuration;
  final pulumi.Input<List<GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime>> windowStartTimes;

  /// Creates a new [GetClusterMaintenancePolicyRecurringMaintenanceWindow].
  /// [delayUntils] Required.
  /// [recurrence] Required.
  /// [windowDuration] Required.
  /// [windowStartTimes] Required.
  const GetClusterMaintenancePolicyRecurringMaintenanceWindow({
    required this.delayUntils,
    required this.recurrence,
    required this.windowDuration,
    required this.windowStartTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayUntils': pulumi.Input.mapInputValue<List<GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil>, List<Map<String, dynamic>>>(delayUntils, (value) => pulumi.Input.encodeList<GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recurrence': recurrence,
      'windowDuration': windowDuration,
      'windowStartTimes': pulumi.Input.mapInputValue<List<GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime>, List<Map<String, dynamic>>>(windowStartTimes, (value) => pulumi.Input.encodeList<GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterMaintenancePolicyRecurringMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyRecurringMaintenanceWindow(
      delayUntils: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil>(map['delayUntils']!, (value) => GetClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil.fromMap((value as Map).cast<String, dynamic>()))),
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      windowDuration: pulumi.Input.fromValue(map['windowDuration'] as String),
      windowStartTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime>(map['windowStartTimes']!, (value) => GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
