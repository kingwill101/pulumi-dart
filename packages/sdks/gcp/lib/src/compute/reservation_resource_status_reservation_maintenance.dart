// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_resource_status_reservation_maintenance_upcoming_group_maintenance.dart';

class ReservationResourceStatusReservationMaintenance {
  /// (Output)
  /// Describes number of instances that have ongoing maintenance.
  final pulumi.Input<int>? instanceMaintenanceOngoingCount;
  /// (Output)
  /// Describes number of instances that have pending maintenance.
  final pulumi.Input<int>? instanceMaintenancePendingCount;
  /// (Output)
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have ongoing maintenance.
  final pulumi.Input<int>? maintenanceOngoingCount;
  /// (Output)
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have pending maintenance.
  final pulumi.Input<int>? maintenancePendingCount;
  /// (Output)
  /// The type of maintenance for the reservation.
  final pulumi.Input<String>? schedulingType;
  /// (Output)
  /// Describes number of subblock Infrastructure that has ongoing maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family(e.g. NVLink Domains). Not all VM Families will support this field.
  final pulumi.Input<int>? subblockInfraMaintenanceOngoingCount;
  /// (Output)
  /// Describes number of subblock Infrastructure that has pending maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family (e.g. NVLink Domains). Not all VM Families will support this field.
  final pulumi.Input<int>? subblockInfraMaintenancePendingCount;
  /// (Output)
  /// Maintenance information on this group of VMs.
  /// Structure is documented below.
  final pulumi.Input<List<ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>>? upcomingGroupMaintenances;

  /// Creates a new [ReservationResourceStatusReservationMaintenance].
  /// [instanceMaintenanceOngoingCount] (Output)
  /// [instanceMaintenancePendingCount] (Output)
  /// [maintenanceOngoingCount] (Output)
  /// [maintenancePendingCount] (Output)
  /// [schedulingType] (Output)
  /// [subblockInfraMaintenanceOngoingCount] (Output)
  /// [subblockInfraMaintenancePendingCount] (Output)
  /// [upcomingGroupMaintenances] (Output)
  ReservationResourceStatusReservationMaintenance({
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
      instanceMaintenanceOngoingCount: map['instanceMaintenanceOngoingCount'] == null ? null : (map['instanceMaintenanceOngoingCount']! as int).input(),
      instanceMaintenancePendingCount: map['instanceMaintenancePendingCount'] == null ? null : (map['instanceMaintenancePendingCount']! as int).input(),
      maintenanceOngoingCount: map['maintenanceOngoingCount'] == null ? null : (map['maintenanceOngoingCount']! as int).input(),
      maintenancePendingCount: map['maintenancePendingCount'] == null ? null : (map['maintenancePendingCount']! as int).input(),
      schedulingType: map['schedulingType'] == null ? null : (map['schedulingType']! as String).input(),
      subblockInfraMaintenanceOngoingCount: map['subblockInfraMaintenanceOngoingCount'] == null ? null : (map['subblockInfraMaintenanceOngoingCount']! as int).input(),
      subblockInfraMaintenancePendingCount: map['subblockInfraMaintenancePendingCount'] == null ? null : (map['subblockInfraMaintenancePendingCount']! as int).input(),
      upcomingGroupMaintenances: map['upcomingGroupMaintenances'] == null ? null : (pulumi.Input.decodeList<ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>(map['upcomingGroupMaintenances']!, (value) => ReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

