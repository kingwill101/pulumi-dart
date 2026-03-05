// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Upcoming Maintenance notification information.
class UpcomingMaintenanceResponseComputeV1 {
  /// Indicates if the maintenance can be customer triggered.
  final pulumi.Input<bool> canReschedule;
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> latestWindowStartTime;
  final pulumi.Input<String> maintenanceStatus;
  /// Defines the type of maintenance.
  final pulumi.Input<String> type;
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> windowEndTime;
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> windowStartTime;

  /// Creates a new [UpcomingMaintenanceResponseComputeV1].
  /// [canReschedule] Indicates if the maintenance can be customer triggered.
  /// [latestWindowStartTime] The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  /// [maintenanceStatus] Required.
  /// [type] Defines the type of maintenance.
  /// [windowEndTime] The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  /// [windowStartTime] The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  UpcomingMaintenanceResponseComputeV1({
    required this.canReschedule,
    required this.latestWindowStartTime,
    required this.maintenanceStatus,
    required this.type,
    required this.windowEndTime,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': canReschedule,
      'latestWindowStartTime': latestWindowStartTime,
      'maintenanceStatus': maintenanceStatus,
      'type': type,
      'windowEndTime': windowEndTime,
      'windowStartTime': windowStartTime,
    };
  }

  factory UpcomingMaintenanceResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return UpcomingMaintenanceResponseComputeV1(
      canReschedule: pulumi.Input.fromValue(map['canReschedule'] as bool),
      latestWindowStartTime: pulumi.Input.fromValue(map['latestWindowStartTime'] as String),
      maintenanceStatus: pulumi.Input.fromValue(map['maintenanceStatus'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      windowEndTime: pulumi.Input.fromValue(map['windowEndTime'] as String),
      windowStartTime: pulumi.Input.fromValue(map['windowStartTime'] as String),
    );
  }
}

