// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationBlockReservationMaintenance {
  /// Number of instances that have ongoing maintenance.
  final pulumi.Input<int> instanceMaintenanceOngoingCount;

  /// Number of instances that have pending maintenance.
  final pulumi.Input<int> instanceMaintenancePendingCount;

  /// Number of hosts in the block that have ongoing maintenance.
  final pulumi.Input<int> maintenanceOngoingCount;

  /// Number of hosts in the block that have pending maintenance.
  final pulumi.Input<int> maintenancePendingCount;

  /// The type of maintenance for the reservation.
  final pulumi.Input<String> schedulingType;

  /// Number of sub-block infrastructure that has ongoing maintenance.
  final pulumi.Input<int> subblockInfraMaintenanceOngoingCount;

  /// Number of sub-block infrastructure that has pending maintenance.
  final pulumi.Input<int> subblockInfraMaintenancePendingCount;

  /// Creates a new [GetReservationBlockReservationMaintenance].
  /// [instanceMaintenanceOngoingCount] Number of instances that have ongoing maintenance.
  /// [instanceMaintenancePendingCount] Number of instances that have pending maintenance.
  /// [maintenanceOngoingCount] Number of hosts in the block that have ongoing maintenance.
  /// [maintenancePendingCount] Number of hosts in the block that have pending maintenance.
  /// [schedulingType] The type of maintenance for the reservation.
  /// [subblockInfraMaintenanceOngoingCount] Number of sub-block infrastructure that has ongoing maintenance.
  /// [subblockInfraMaintenancePendingCount] Number of sub-block infrastructure that has pending maintenance.
  GetReservationBlockReservationMaintenance({
    required this.instanceMaintenanceOngoingCount,
    required this.instanceMaintenancePendingCount,
    required this.maintenanceOngoingCount,
    required this.maintenancePendingCount,
    required this.schedulingType,
    required this.subblockInfraMaintenanceOngoingCount,
    required this.subblockInfraMaintenancePendingCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceMaintenanceOngoingCount': instanceMaintenanceOngoingCount,
      'instanceMaintenancePendingCount': instanceMaintenancePendingCount,
      'maintenanceOngoingCount': maintenanceOngoingCount,
      'maintenancePendingCount': maintenancePendingCount,
      'schedulingType': schedulingType,
      'subblockInfraMaintenanceOngoingCount':
          subblockInfraMaintenanceOngoingCount,
      'subblockInfraMaintenancePendingCount':
          subblockInfraMaintenancePendingCount,
    };
  }

  factory GetReservationBlockReservationMaintenance.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReservationBlockReservationMaintenance(
      instanceMaintenanceOngoingCount: pulumi.Input.fromValue(
        map['instanceMaintenanceOngoingCount'] as int,
      ),
      instanceMaintenancePendingCount: pulumi.Input.fromValue(
        map['instanceMaintenancePendingCount'] as int,
      ),
      maintenanceOngoingCount: pulumi.Input.fromValue(
        map['maintenanceOngoingCount'] as int,
      ),
      maintenancePendingCount: pulumi.Input.fromValue(
        map['maintenancePendingCount'] as int,
      ),
      schedulingType: pulumi.Input.fromValue(map['schedulingType'] as String),
      subblockInfraMaintenanceOngoingCount: pulumi.Input.fromValue(
        map['subblockInfraMaintenanceOngoingCount'] as int,
      ),
      subblockInfraMaintenancePendingCount: pulumi.Input.fromValue(
        map['subblockInfraMaintenancePendingCount'] as int,
      ),
    );
  }
}
