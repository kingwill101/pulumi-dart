// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance {
  /// Indicates if the maintenance can be customer triggered.
  final pulumi.Input<bool> canReschedule;
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> latestWindowStartTime;
  /// Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  final pulumi.Input<bool> maintenanceOnShutdown;
  /// The reasons for the maintenance. Only valid for vms.
  final pulumi.Input<List<String>> maintenanceReasons;
  /// Status of the maintenance.
  final pulumi.Input<String> maintenanceStatus;
  /// Defines the type of maintenance.
  final pulumi.Input<String> type;
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> windowEndTime;
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String> windowStartTime;

  /// Creates a new [GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance].
  /// [canReschedule] Indicates if the maintenance can be customer triggered.
  /// [latestWindowStartTime] The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  /// [maintenanceOnShutdown] Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  /// [maintenanceReasons] The reasons for the maintenance. Only valid for vms.
  /// [maintenanceStatus] Status of the maintenance.
  /// [type] Defines the type of maintenance.
  /// [windowEndTime] The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  /// [windowStartTime] The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance({
    required this.canReschedule,
    required this.latestWindowStartTime,
    required this.maintenanceOnShutdown,
    required this.maintenanceReasons,
    required this.maintenanceStatus,
    required this.type,
    required this.windowEndTime,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': canReschedule,
      'latestWindowStartTime': latestWindowStartTime,
      'maintenanceOnShutdown': maintenanceOnShutdown,
      'maintenanceReasons': maintenanceReasons,
      'maintenanceStatus': maintenanceStatus,
      'type': type,
      'windowEndTime': windowEndTime,
      'windowStartTime': windowStartTime,
    };
  }

  factory GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance(
      canReschedule: pulumi.Input.fromValue(map['canReschedule'] as bool),
      latestWindowStartTime: pulumi.Input.fromValue(map['latestWindowStartTime'] as String),
      maintenanceOnShutdown: pulumi.Input.fromValue(map['maintenanceOnShutdown'] as bool),
      maintenanceReasons: pulumi.Input.fromValue((map['maintenanceReasons'] as List).cast<String>()),
      maintenanceStatus: pulumi.Input.fromValue(map['maintenanceStatus'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      windowEndTime: pulumi.Input.fromValue(map['windowEndTime'] as String),
      windowStartTime: pulumi.Input.fromValue(map['windowStartTime'] as String),
    );
  }
}

