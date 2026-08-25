// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_resource_status_reservation_maintenance_upcoming_group_maintenance.dart';

class ReservationResourceStatusReservationMaintenance {
  /// (Output)
  /// Describes number of instances that have ongoing maintenance.
  final pulumi.Input<int?>? instanceMaintenanceOngoingCount;
  /// (Output)
  /// Describes number of instances that have pending maintenance.
  final pulumi.Input<int?>? instanceMaintenancePendingCount;
  /// (Output)
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have ongoing maintenance.
  final pulumi.Input<int?>? maintenanceOngoingCount;
  /// (Output)
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have pending maintenance.
  final pulumi.Input<int?>? maintenancePendingCount;
  /// (Output)
  /// The type of maintenance for the reservation.
  final pulumi.Input<String?>? schedulingType;
  /// (Output)
  /// Describes number of subblock Infrastructure that has ongoing maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family(e.g. NVLink Domains). Not all VM Families will support this field.
  final pulumi.Input<int?>? subblockInfraMaintenanceOngoingCount;
  /// (Output)
  /// Describes number of subblock Infrastructure that has pending maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family (e.g. NVLink Domains). Not all VM Families will support this field.
  final pulumi.Input<int?>? subblockInfraMaintenancePendingCount;
  /// (Output)
  /// Maintenance information on this group of VMs.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>?>? upcomingGroupMaintenances;

  /// Creates a new [ReservationResourceStatusReservationMaintenance].
  /// [instanceMaintenanceOngoingCount] (Output)
  /// [instanceMaintenancePendingCount] (Output)
  /// [maintenanceOngoingCount] (Output)
  /// [maintenancePendingCount] (Output)
  /// [schedulingType] (Output)
  /// [subblockInfraMaintenanceOngoingCount] (Output)
  /// [subblockInfraMaintenancePendingCount] (Output)
  /// [upcomingGroupMaintenances] (Output)
  const ReservationResourceStatusReservationMaintenance({
    this.instanceMaintenanceOngoingCount,
    this.instanceMaintenancePendingCount,
    this.maintenanceOngoingCount,
    this.maintenancePendingCount,
    this.schedulingType,
    this.subblockInfraMaintenanceOngoingCount,
    this.subblockInfraMaintenancePendingCount,
    this.upcomingGroupMaintenances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceMaintenanceOngoingCount': ?instanceMaintenanceOngoingCount,
      'instanceMaintenancePendingCount': ?instanceMaintenancePendingCount,
      'maintenanceOngoingCount': ?maintenanceOngoingCount,
      'maintenancePendingCount': ?maintenancePendingCount,
      'schedulingType': ?schedulingType,
      'subblockInfraMaintenanceOngoingCount': ?subblockInfraMaintenanceOngoingCount,
      'subblockInfraMaintenancePendingCount': ?subblockInfraMaintenancePendingCount,
      'upcomingGroupMaintenances': ?pulumi.Input.mapOptionalInputValue<List<ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>, List<Map<String, dynamic>>>(upcomingGroupMaintenances, (value) => pulumi.Input.encodeList<ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReservationResourceStatusReservationMaintenance.fromMap(Map<String, dynamic> map) {
    return ReservationResourceStatusReservationMaintenance(
      instanceMaintenanceOngoingCount: (() { final guardedValue = map['instanceMaintenanceOngoingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      instanceMaintenancePendingCount: (() { final guardedValue = map['instanceMaintenancePendingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maintenanceOngoingCount: (() { final guardedValue = map['maintenanceOngoingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maintenancePendingCount: (() { final guardedValue = map['maintenancePendingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      schedulingType: (() { final guardedValue = map['schedulingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subblockInfraMaintenanceOngoingCount: (() { final guardedValue = map['subblockInfraMaintenanceOngoingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      subblockInfraMaintenancePendingCount: (() { final guardedValue = map['subblockInfraMaintenancePendingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      upcomingGroupMaintenances: (() { final guardedValue = map['upcomingGroupMaintenances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>(guardedValue, (value) => ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
