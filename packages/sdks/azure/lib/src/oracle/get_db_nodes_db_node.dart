// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDbNodesDbNode {
  /// Additional information about the planned maintenance.
  final pulumi.Input<String> additionalDetails;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the backup IP address associated with the database node. Use this OCID with either the [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PrivateIp/GetPrivateIp) or the [GetPublicIpByPrivateIpId](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PublicIp/GetPublicIpByPrivateIpId) API to get the IP address needed to make a database connection.
  final pulumi.Input<String> backupIpId;
  final pulumi.Input<String> backupVnic2Id;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the backup VNIC.
  final pulumi.Input<String> backupVnicId;
  /// The number of CPU cores enabled on the DB node.
  final pulumi.Input<int> cpuCoreCount;
  /// The allocated local node storage in GBs on the DB node.
  final pulumi.Input<int> dbNodeStorageSizeInGbs;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the ExaCC DB server associated with the database node.
  final pulumi.Input<String> dbServerId;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DB system.
  final pulumi.Input<String> dbSystemId;
  /// The name of the Fault Domain the instance is contained in.
  final pulumi.Input<String> faultDomain;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the host IP address associated with the database node. Use this OCID with either the [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PrivateIp/GetPrivateIp) or the [GetPublicIpByPrivateIpId](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PublicIp/GetPublicIpByPrivateIpId) API to get the IP address needed to make a database connection.
  final pulumi.Input<String> hostIpId;
  final pulumi.Input<String> hostname;
  /// Information about the current lifecycle details.
  final pulumi.Input<String> lifecycleDetails;
  /// Information about the current lifecycle state.
  final pulumi.Input<String> lifecycleState;
  /// The type of database node maintenance.
  final pulumi.Input<String> maintenanceType;
  /// The allocated memory in GBs on the DB Node.
  final pulumi.Input<int> memorySizeInGbs;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DB node.
  final pulumi.Input<String> ocid;
  /// The size (in GB) of the block storage volume allocation for the DB system. This attribute applies only for virtual machine DB systems.
  final pulumi.Input<int> softwareStorageSizeInGb;
  /// The date and time that the DB node was created.
  final pulumi.Input<String> timeCreated;
  /// End date and time of maintenance window.
  final pulumi.Input<String> timeMaintenanceWindowEnd;
  /// Start date and time of maintenance window.
  final pulumi.Input<String> timeMaintenanceWindowStart;
  final pulumi.Input<String> vnic2Id;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VNIC.
  final pulumi.Input<String> vnicId;

  /// Creates a new [GetDbNodesDbNode].
  /// [additionalDetails] Additional information about the planned maintenance.
  /// [backupIpId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the backup IP address associated with the database node. Use this OCID with either the [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PrivateIp/GetPrivateIp) or the [GetPublicIpByPrivateIpId](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PublicIp/GetPublicIpByPrivateIpId) API to get the IP address needed to make a database connection.
  /// [backupVnic2Id] Required.
  /// [backupVnicId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the backup VNIC.
  /// [cpuCoreCount] The number of CPU cores enabled on the DB node.
  /// [dbNodeStorageSizeInGbs] The allocated local node storage in GBs on the DB node.
  /// [dbServerId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the ExaCC DB server associated with the database node.
  /// [dbSystemId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DB system.
  /// [faultDomain] The name of the Fault Domain the instance is contained in.
  /// [hostIpId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the host IP address associated with the database node. Use this OCID with either the [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PrivateIp/GetPrivateIp) or the [GetPublicIpByPrivateIpId](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PublicIp/GetPublicIpByPrivateIpId) API to get the IP address needed to make a database connection.
  /// [hostname] Required.
  /// [lifecycleDetails] Information about the current lifecycle details.
  /// [lifecycleState] Information about the current lifecycle state.
  /// [maintenanceType] The type of database node maintenance.
  /// [memorySizeInGbs] The allocated memory in GBs on the DB Node.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DB node.
  /// [softwareStorageSizeInGb] The size (in GB) of the block storage volume allocation for the DB system. This attribute applies only for virtual machine DB systems.
  /// [timeCreated] The date and time that the DB node was created.
  /// [timeMaintenanceWindowEnd] End date and time of maintenance window.
  /// [timeMaintenanceWindowStart] Start date and time of maintenance window.
  /// [vnic2Id] Required.
  /// [vnicId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VNIC.
  const GetDbNodesDbNode({
    required this.additionalDetails,
    required this.backupIpId,
    required this.backupVnic2Id,
    required this.backupVnicId,
    required this.cpuCoreCount,
    required this.dbNodeStorageSizeInGbs,
    required this.dbServerId,
    required this.dbSystemId,
    required this.faultDomain,
    required this.hostIpId,
    required this.hostname,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.maintenanceType,
    required this.memorySizeInGbs,
    required this.ocid,
    required this.softwareStorageSizeInGb,
    required this.timeCreated,
    required this.timeMaintenanceWindowEnd,
    required this.timeMaintenanceWindowStart,
    required this.vnic2Id,
    required this.vnicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetails': additionalDetails,
      'backupIpId': backupIpId,
      'backupVnic2Id': backupVnic2Id,
      'backupVnicId': backupVnicId,
      'cpuCoreCount': cpuCoreCount,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServerId': dbServerId,
      'dbSystemId': dbSystemId,
      'faultDomain': faultDomain,
      'hostIpId': hostIpId,
      'hostname': hostname,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'maintenanceType': maintenanceType,
      'memorySizeInGbs': memorySizeInGbs,
      'ocid': ocid,
      'softwareStorageSizeInGb': softwareStorageSizeInGb,
      'timeCreated': timeCreated,
      'timeMaintenanceWindowEnd': timeMaintenanceWindowEnd,
      'timeMaintenanceWindowStart': timeMaintenanceWindowStart,
      'vnic2Id': vnic2Id,
      'vnicId': vnicId,
    };
  }

  factory GetDbNodesDbNode.fromMap(Map<String, dynamic> map) {
    return GetDbNodesDbNode(
      additionalDetails: pulumi.Input.fromValue(map['additionalDetails'] as String),
      backupIpId: pulumi.Input.fromValue(map['backupIpId'] as String),
      backupVnic2Id: pulumi.Input.fromValue(map['backupVnic2Id'] as String),
      backupVnicId: pulumi.Input.fromValue(map['backupVnicId'] as String),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      dbNodeStorageSizeInGbs: pulumi.Input.fromValue(map['dbNodeStorageSizeInGbs'] as int),
      dbServerId: pulumi.Input.fromValue(map['dbServerId'] as String),
      dbSystemId: pulumi.Input.fromValue(map['dbSystemId'] as String),
      faultDomain: pulumi.Input.fromValue(map['faultDomain'] as String),
      hostIpId: pulumi.Input.fromValue(map['hostIpId'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      lifecycleDetails: pulumi.Input.fromValue(map['lifecycleDetails'] as String),
      lifecycleState: pulumi.Input.fromValue(map['lifecycleState'] as String),
      maintenanceType: pulumi.Input.fromValue(map['maintenanceType'] as String),
      memorySizeInGbs: pulumi.Input.fromValue(map['memorySizeInGbs'] as int),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      softwareStorageSizeInGb: pulumi.Input.fromValue(map['softwareStorageSizeInGb'] as int),
      timeCreated: pulumi.Input.fromValue(map['timeCreated'] as String),
      timeMaintenanceWindowEnd: pulumi.Input.fromValue(map['timeMaintenanceWindowEnd'] as String),
      timeMaintenanceWindowStart: pulumi.Input.fromValue(map['timeMaintenanceWindowStart'] as String),
      vnic2Id: pulumi.Input.fromValue(map['vnic2Id'] as String),
      vnicId: pulumi.Input.fromValue(map['vnicId'] as String),
    );
  }
}
