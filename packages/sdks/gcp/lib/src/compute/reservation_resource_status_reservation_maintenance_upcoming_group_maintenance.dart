// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance {
  /// (Output)
  /// Indicates if the maintenance can be customer triggered.
  final pulumi.Input<bool>? canReschedule;
  /// (Output)
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String>? latestWindowStartTime;
  /// (Output)
  /// Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  final pulumi.Input<bool>? maintenanceOnShutdown;
  /// (Output)
  /// The reasons for the maintenance. Only valid for vms.
  final pulumi.Input<List<String>>? maintenanceReasons;
  /// (Output)
  /// Status of the maintenance.
  final pulumi.Input<String>? maintenanceStatus;
  /// (Output)
  /// Defines the type of maintenance.
  final pulumi.Input<String>? type;
  /// (Output)
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String>? windowEndTime;
  /// (Output)
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String>? windowStartTime;

  /// Creates a new [ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance].
  /// [canReschedule] (Output)
  /// [latestWindowStartTime] (Output)
  /// [maintenanceOnShutdown] (Output)
  /// [maintenanceReasons] (Output)
  /// [maintenanceStatus] (Output)
  /// [type] (Output)
  /// [windowEndTime] (Output)
  /// [windowStartTime] (Output)
  ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance({
    this.canReschedule,
    this.latestWindowStartTime,
    this.maintenanceOnShutdown,
    this.maintenanceReasons,
    this.maintenanceStatus,
    this.type,
    this.windowEndTime,
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canReschedule': ?canReschedule,
      'latestWindowStartTime': ?latestWindowStartTime,
      'maintenanceOnShutdown': ?maintenanceOnShutdown,
      'maintenanceReasons': ?maintenanceReasons,
      'maintenanceStatus': ?maintenanceStatus,
      'type': ?type,
      'windowEndTime': ?windowEndTime,
      'windowStartTime': ?windowStartTime,
    };
  }

  factory ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap(Map<String, dynamic> map) {
    return ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance(
      canReschedule: map['canReschedule'] == null ? null : (map['canReschedule'] as bool).input(),
      latestWindowStartTime: map['latestWindowStartTime'] == null ? null : (map['latestWindowStartTime'] as String).input(),
      maintenanceOnShutdown: map['maintenanceOnShutdown'] == null ? null : (map['maintenanceOnShutdown'] as bool).input(),
      maintenanceReasons: map['maintenanceReasons'] == null ? null : ((map['maintenanceReasons'] as List).cast<String>()).input(),
      maintenanceStatus: map['maintenanceStatus'] == null ? null : (map['maintenanceStatus'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      windowEndTime: map['windowEndTime'] == null ? null : (map['windowEndTime'] as String).input(),
      windowStartTime: map['windowStartTime'] == null ? null : (map['windowStartTime'] as String).input(),
    );
  }
}

