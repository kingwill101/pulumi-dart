// ignore_for_file: unused_element, unnecessary_cast


class GetDbNodesDbNode {
  /// Additional information about the planned maintenance.
  final String additionalDetails;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the backup IP address associated with the database node. Use this OCID with either the [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PrivateIp/GetPrivateIp) or the [GetPublicIpByPrivateIpId](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PublicIp/GetPublicIpByPrivateIpId) API to get the IP address needed to make a database connection.
  final String backupIpId;
  final String backupVnic2Id;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the backup VNIC.
  final String backupVnicId;
  /// The number of CPU cores enabled on the DB node.
  final int cpuCoreCount;
  /// The allocated local node storage in GBs on the DB node.
  final int dbNodeStorageSizeInGbs;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the ExaCC DB server associated with the database node.
  final String dbServerId;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the DB system.
  final String dbSystemId;
  /// The name of the Fault Domain the instance is contained in.
  final String faultDomain;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the host IP address associated with the database node. Use this OCID with either the [GetPrivateIp](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PrivateIp/GetPrivateIp) or the [GetPublicIpByPrivateIpId](https://docs.cloud.oracle.com/iaas/api/#/en/iaas/20160918/PublicIp/GetPublicIpByPrivateIpId) API to get the IP address needed to make a database connection.
  final String hostIpId;
  final String hostname;
  /// Information about the current lifecycle details.
  final String lifecycleDetails;
  /// Information about the current lifecycle state.
  final String lifecycleState;
  /// The type of database node maintenance.
  final String maintenanceType;
  /// The allocated memory in GBs on the DB Node.
  final int memorySizeInGbs;
  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DB node.
  final String ocid;
  /// The size (in GB) of the block storage volume allocation for the DB system. This attribute applies only for virtual machine DB systems.
  final int softwareStorageSizeInGb;
  /// The date and time that the DB node was created.
  final String timeCreated;
  /// End date and time of maintenance window.
  final String timeMaintenanceWindowEnd;
  /// Start date and time of maintenance window.
  final String timeMaintenanceWindowStart;
  final String vnic2Id;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the VNIC.
  final String vnicId;

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
  GetDbNodesDbNode({
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
      additionalDetails: map['additionalDetails'] as String,
      backupIpId: map['backupIpId'] as String,
      backupVnic2Id: map['backupVnic2Id'] as String,
      backupVnicId: map['backupVnicId'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServerId: map['dbServerId'] as String,
      dbSystemId: map['dbSystemId'] as String,
      faultDomain: map['faultDomain'] as String,
      hostIpId: map['hostIpId'] as String,
      hostname: map['hostname'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      maintenanceType: map['maintenanceType'] as String,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      ocid: map['ocid'] as String,
      softwareStorageSizeInGb: map['softwareStorageSizeInGb'] as int,
      timeCreated: map['timeCreated'] as String,
      timeMaintenanceWindowEnd: map['timeMaintenanceWindowEnd'] as String,
      timeMaintenanceWindowStart: map['timeMaintenanceWindowStart'] as String,
      vnic2Id: map['vnic2Id'] as String,
      vnicId: map['vnicId'] as String,
    );
  }
}

