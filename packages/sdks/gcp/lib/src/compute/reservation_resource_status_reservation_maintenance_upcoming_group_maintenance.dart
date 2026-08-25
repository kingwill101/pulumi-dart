// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance {
  /// (Output)
  /// Indicates if the maintenance can be customer triggered.
  final pulumi.Input<bool?>? canReschedule;
  /// (Output)
  /// The latest time for the planned maintenance window to start. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String?>? latestWindowStartTime;
  /// (Output)
  /// Indicates whether the UpcomingMaintenance will be triggered on VM shutdown.
  final pulumi.Input<bool?>? maintenanceOnShutdown;
  /// (Output)
  /// The reasons for the maintenance. Only valid for vms.
  final pulumi.Input<List<String>?>? maintenanceReasons;
  /// (Output)
  /// Status of the maintenance.
  final pulumi.Input<String?>? maintenanceStatus;
  /// (Output)
  /// Defines the type of maintenance.
  final pulumi.Input<String?>? type;
  /// (Output)
  /// The time by which the maintenance disruption will be completed. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String?>? windowEndTime;
  /// (Output)
  /// The current start time of the maintenance window. This timestamp value is in RFC3339 text format.
  final pulumi.Input<String?>? windowStartTime;

  /// Creates a new [ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance].
  /// [canReschedule] (Output)
  /// [latestWindowStartTime] (Output)
  /// [maintenanceOnShutdown] (Output)
  /// [maintenanceReasons] (Output)
  /// [maintenanceStatus] (Output)
  /// [type] (Output)
  /// [windowEndTime] (Output)
  /// [windowStartTime] (Output)
  const ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance({
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
      canReschedule: (() { final guardedValue = map['canReschedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latestWindowStartTime: (() { final guardedValue = map['latestWindowStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceOnShutdown: (() { final guardedValue = map['maintenanceOnShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maintenanceReasons: (() { final guardedValue = map['maintenanceReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maintenanceStatus: (() { final guardedValue = map['maintenanceStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowEndTime: (() { final guardedValue = map['windowEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      windowStartTime: (() { final guardedValue = map['windowStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
