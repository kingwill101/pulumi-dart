// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_resource_status_reservation_maintenance_upcoming_group_maintenance.dart';

class GetReservationResourceStatusReservationMaintenance {
  /// Describes number of instances that have ongoing maintenance.
  final pulumi.Input<int> instanceMaintenanceOngoingCount;
  /// Describes number of instances that have pending maintenance.
  final pulumi.Input<int> instanceMaintenancePendingCount;
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have ongoing maintenance.
  final pulumi.Input<int> maintenanceOngoingCount;
  /// Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have pending maintenance.
  final pulumi.Input<int> maintenancePendingCount;
  /// The type of maintenance for the reservation.
  final pulumi.Input<String> schedulingType;
  /// Describes number of subblock Infrastructure that has ongoing maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family(e.g. NVLink Domains). Not all VM Families will support this field.
  final pulumi.Input<int> subblockInfraMaintenanceOngoingCount;
  /// Describes number of subblock Infrastructure that has pending maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family (e.g. NVLink Domains). Not all VM Families will support this field.
  final pulumi.Input<int> subblockInfraMaintenancePendingCount;
  /// Maintenance information on this group of VMs.
  final pulumi.Input<List<GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>> upcomingGroupMaintenances;

  /// Creates a new [GetReservationResourceStatusReservationMaintenance].
  /// [instanceMaintenanceOngoingCount] Describes number of instances that have ongoing maintenance.
  /// [instanceMaintenancePendingCount] Describes number of instances that have pending maintenance.
  /// [maintenanceOngoingCount] Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have ongoing maintenance.
  /// [maintenancePendingCount] Progress for ongoing maintenance for this group of VMs/hosts. Describes number of hosts in the block that have pending maintenance.
  /// [schedulingType] The type of maintenance for the reservation.
  /// [subblockInfraMaintenanceOngoingCount] Describes number of subblock Infrastructure that has ongoing maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family(e.g. NVLink Domains). Not all VM Families will support this field.
  /// [subblockInfraMaintenancePendingCount] Describes number of subblock Infrastructure that has pending maintenance. Here, Subblock Infrastructure Maintenance pertains to upstream hardware contained in the Subblock that is necessary for a VM Family (e.g. NVLink Domains). Not all VM Families will support this field.
  /// [upcomingGroupMaintenances] Maintenance information on this group of VMs.
  GetReservationResourceStatusReservationMaintenance({
    required this.instanceMaintenanceOngoingCount,
    required this.instanceMaintenancePendingCount,
    required this.maintenanceOngoingCount,
    required this.maintenancePendingCount,
    required this.schedulingType,
    required this.subblockInfraMaintenanceOngoingCount,
    required this.subblockInfraMaintenancePendingCount,
    required this.upcomingGroupMaintenances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceMaintenanceOngoingCount': instanceMaintenanceOngoingCount,
      'instanceMaintenancePendingCount': instanceMaintenancePendingCount,
      'maintenanceOngoingCount': maintenanceOngoingCount,
      'maintenancePendingCount': maintenancePendingCount,
      'schedulingType': schedulingType,
      'subblockInfraMaintenanceOngoingCount': subblockInfraMaintenanceOngoingCount,
      'subblockInfraMaintenancePendingCount': subblockInfraMaintenancePendingCount,
      'upcomingGroupMaintenances': pulumi.Input.mapInputValue<List<GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>, List<Map<String, dynamic>>>(upcomingGroupMaintenances, (value) => pulumi.Input.encodeList<GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetReservationResourceStatusReservationMaintenance.fromMap(Map<String, dynamic> map) {
    return GetReservationResourceStatusReservationMaintenance(
      instanceMaintenanceOngoingCount: (map['instanceMaintenanceOngoingCount'] as int).input(),
      instanceMaintenancePendingCount: (map['instanceMaintenancePendingCount'] as int).input(),
      maintenanceOngoingCount: (map['maintenanceOngoingCount'] as int).input(),
      maintenancePendingCount: (map['maintenancePendingCount'] as int).input(),
      schedulingType: (map['schedulingType'] as String).input(),
      subblockInfraMaintenanceOngoingCount: (map['subblockInfraMaintenanceOngoingCount'] as int).input(),
      subblockInfraMaintenancePendingCount: (map['subblockInfraMaintenancePendingCount'] as int).input(),
      upcomingGroupMaintenances: (pulumi.Input.decodeList<GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance>(map['upcomingGroupMaintenances'], (value) => GetReservationResourceStatusReservationMaintenanceUpcomingGroupMaintenance.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

