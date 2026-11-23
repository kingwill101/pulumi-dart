// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReservationSubBlockReservationSubBlockMaintenance {
  /// Number of instances that have ongoing maintenance.
  final pulumi.Input<int> instanceMaintenanceOngoingCount;
  /// Number of instances that have pending maintenance.
  final pulumi.Input<int> instanceMaintenancePendingCount;
  /// Number of hosts in the sub-block that have ongoing maintenance.
  final pulumi.Input<int> maintenanceOngoingCount;
  /// Number of hosts in the sub-block that have pending maintenance.
  final pulumi.Input<int> maintenancePendingCount;
  /// The type of maintenance for the reservation.
  final pulumi.Input<String> schedulingType;
  /// Number of sub-block infrastructure that has ongoing maintenance.
  final pulumi.Input<int> subblockInfraMaintenanceOngoingCount;
  /// Number of sub-block infrastructure that has pending maintenance.
  final pulumi.Input<int> subblockInfraMaintenancePendingCount;

  /// Creates a new [GetReservationSubBlockReservationSubBlockMaintenance].
  /// [instanceMaintenanceOngoingCount] Number of instances that have ongoing maintenance.
  /// [instanceMaintenancePendingCount] Number of instances that have pending maintenance.
  /// [maintenanceOngoingCount] Number of hosts in the sub-block that have ongoing maintenance.
  /// [maintenancePendingCount] Number of hosts in the sub-block that have pending maintenance.
  /// [schedulingType] The type of maintenance for the reservation.
  /// [subblockInfraMaintenanceOngoingCount] Number of sub-block infrastructure that has ongoing maintenance.
  /// [subblockInfraMaintenancePendingCount] Number of sub-block infrastructure that has pending maintenance.
  const GetReservationSubBlockReservationSubBlockMaintenance({
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
      'subblockInfraMaintenanceOngoingCount': subblockInfraMaintenanceOngoingCount,
      'subblockInfraMaintenancePendingCount': subblockInfraMaintenancePendingCount,
    };
  }

  factory GetReservationSubBlockReservationSubBlockMaintenance.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockReservationSubBlockMaintenance(
      instanceMaintenanceOngoingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['instanceMaintenanceOngoingCount'])),
      instanceMaintenancePendingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['instanceMaintenancePendingCount'])),
      maintenanceOngoingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maintenanceOngoingCount'])),
      maintenancePendingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maintenancePendingCount'])),
      schedulingType: pulumi.Input.fromValue(map['schedulingType'] as String),
      subblockInfraMaintenanceOngoingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['subblockInfraMaintenanceOngoingCount'])),
      subblockInfraMaintenancePendingCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['subblockInfraMaintenancePendingCount'])),
    );
  }
}
