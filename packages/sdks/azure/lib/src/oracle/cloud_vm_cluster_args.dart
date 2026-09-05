// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_file_system_configuration.dart';

/// {@template pulumi_oracle_cloud_vm_cluster_cloud_vm_cluster_args_doc}
/// The set of arguments for CloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_oracle_cloud_vm_cluster_cloud_vm_cluster_args_doc}
class CloudVmClusterArgs {
  /// The backup subnet CIDR of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? backupSubnetCidr;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata infrastructure. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  /// The cluster name for Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? clusterName;
  /// The number of CPU cores enabled on the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int> cpuCoreCount;
  /// A `dataCollectionOptions` block as defined below. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<CloudVmClusterDataCollectionOptions?>? dataCollectionOptions;
  /// The percentage assigned to DATA storage (user data and database files). Changing this forces a new Cloud VM Cluster to be created. The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60` and `80`.
  final pulumi.Input<int?>? dataStoragePercentage;
  /// The data disk group size to be allocated in TBs. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<double?>? dataStorageSizeInTbs;
  /// The local node storage to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int?>? dbNodeStorageSizeInGbs;
  /// The list of DB servers. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<List<String>> dbServers;
  /// The user-friendly name for the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created. The name does not need to be unique.
  final pulumi.Input<String> displayName;
  /// The name of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? domain;
  /// A `fileSystemConfiguration` block as defined below.
  final pulumi.Input<List<CloudVmClusterFileSystemConfiguration>?>? fileSystemConfigurations;
  /// A valid Oracle Grid Infrastructure (GI) software version. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> giVersion;
  /// The hostname for the Cloud VM Cluster without suffix. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> hostname;
  /// The Oracle license model that applies to the Cloud VM Cluster, either `BringYourOwnLicense` or `LicenseIncluded`. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> licenseModel;
  /// If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If `false`, database backup on local Exadata storage is not available in the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool?>? localBackupEnabled;
  /// The Azure Region where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? location;
  /// The memory to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int?>? memorySizeInGbs;
  /// The name which should be used for this Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The TCP Single Client Access Name (SCAN) port. The default port to 1521. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int?>? scanListenerPortTcp;
  /// The TCPS Single Client Access Name (SCAN) port. The default port to 2484. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int?>? scanListenerPortTcpSsl;
  /// If true, the sparse disk group is configured for the Cloud VM Cluster. If `false`, the sparse disk group is not created. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool?>? sparseDiskgroupEnabled;
  /// The public key portion of one or more key pairs used for SSH access to the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<List<String>> sshPublicKeys;
  /// The ID of the subnet associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> subnetId;
  /// Operating system version of the Exadata image. System version must be &lt;= Db server major version (the first two parts of the DB server version eg 23.1.X.X.XXXX). Accepted Values for Grid Infrastructure (GI) version 19.0.0.0 are 22.1.30.0.0.241204, 22.1.32.0.0.250205, 22.1.31.0.0.250110, 23.1.20.0.0.241112, 23.1.21.0.0.241204, 23.1.22.0.0.250119, 23.1.23.0.0.250207. For Grid Infrastructure (GI) version 23.0.0.0 allowed system versions are 23.1.19.0.0.241015, 23.1.20.0.0.241112, 23.1.22.0.0.250119, 23.1.21.0.0.241204, 23.1.23.0.0.250207. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? systemVersion;
  /// A mapping of tags which should be assigned to the Cloud VM Cluster.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.cloud.oracle.com/iaas/Content/Database/References/timezones.htm). Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? timeZone;
  /// The ID of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String> virtualNetworkId;
  /// The OCID of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CloudVmClusterArgs].
  /// [backupSubnetCidr] The backup subnet CIDR of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [cloudExadataInfrastructureId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata infrastructure. Changing this forces a new Cloud VM Cluster to be created.
  /// [clusterName] The cluster name for Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [cpuCoreCount] The number of CPU cores enabled on the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [dataCollectionOptions] A `dataCollectionOptions` block as defined below. Changing this forces a new Cloud VM Cluster to be created.
  /// [dataStoragePercentage] The percentage assigned to DATA storage (user data and database files). Changing this forces a new Cloud VM Cluster to be created. The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60` and `80`.
  /// [dataStorageSizeInTbs] The data disk group size to be allocated in TBs. Changing this forces a new Cloud VM Cluster to be created.
  /// [dbNodeStorageSizeInGbs] The local node storage to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  /// [dbServers] The list of DB servers. Changing this forces a new Cloud VM Cluster to be created.
  /// [displayName] The user-friendly name for the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created. The name does not need to be unique.
  /// [domain] The name of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  /// [fileSystemConfigurations] A `fileSystemConfiguration` block as defined below.
  /// [giVersion] A valid Oracle Grid Infrastructure (GI) software version. Changing this forces a new Cloud VM Cluster to be created.
  /// [hostname] The hostname for the Cloud VM Cluster without suffix. Changing this forces a new Cloud VM Cluster to be created.
  /// [licenseModel] The Oracle license model that applies to the Cloud VM Cluster, either `BringYourOwnLicense` or `LicenseIncluded`. Changing this forces a new Cloud VM Cluster to be created.
  /// [localBackupEnabled] If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If `false`, database backup on local Exadata storage is not available in the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [location] The Azure Region where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  /// [memorySizeInGbs] The memory to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  /// [name] The name which should be used for this Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [resourceGroupName] The name of the Resource Group where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  /// [scanListenerPortTcp] The TCP Single Client Access Name (SCAN) port. The default port to 1521. Changing this forces a new Cloud VM Cluster to be created.
  /// [scanListenerPortTcpSsl] The TCPS Single Client Access Name (SCAN) port. The default port to 2484. Changing this forces a new Cloud VM Cluster to be created.
  /// [sparseDiskgroupEnabled] If true, the sparse disk group is configured for the Cloud VM Cluster. If `false`, the sparse disk group is not created. Changing this forces a new Cloud VM Cluster to be created.
  /// [sshPublicKeys] The public key portion of one or more key pairs used for SSH access to the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [subnetId] The ID of the subnet associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [systemVersion] Operating system version of the Exadata image. System version must be &lt;= Db server major version (the first two parts of the DB server version eg 23.1.X.X.XXXX). Accepted Values for Grid Infrastructure (GI) version 19.0.0.0 are 22.1.30.0.0.241204, 22.1.32.0.0.250205, 22.1.31.0.0.250110, 23.1.20.0.0.241112, 23.1.21.0.0.241204, 23.1.22.0.0.250119, 23.1.23.0.0.250207. For Grid Infrastructure (GI) version 23.0.0.0 allowed system versions are 23.1.19.0.0.241015, 23.1.20.0.0.241112, 23.1.22.0.0.250119, 23.1.21.0.0.241204, 23.1.23.0.0.250207. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Cloud VM Cluster.
  /// [timeZone] The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.cloud.oracle.com/iaas/Content/Database/References/timezones.htm). Changing this forces a new Cloud VM Cluster to be created.
  /// [virtualNetworkId] The ID of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [zoneId] The OCID of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  const CloudVmClusterArgs({
    this.backupSubnetCidr,
    required this.cloudExadataInfrastructureId,
    this.clusterName,
    required this.cpuCoreCount,
    this.dataCollectionOptions,
    this.dataStoragePercentage,
    this.dataStorageSizeInTbs,
    this.dbNodeStorageSizeInGbs,
    required this.dbServers,
    required this.displayName,
    this.domain,
    this.fileSystemConfigurations,
    required this.giVersion,
    required this.hostname,
    required this.licenseModel,
    this.localBackupEnabled,
    this.location,
    this.memorySizeInGbs,
    this.name,
    required this.resourceGroupName,
    this.scanListenerPortTcp,
    this.scanListenerPortTcpSsl,
    this.sparseDiskgroupEnabled,
    required this.sshPublicKeys,
    required this.subnetId,
    this.systemVersion,
    this.tags,
    this.timeZone,
    required this.virtualNetworkId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSubnetCidr': ?backupSubnetCidr,
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'clusterName': ?clusterName,
      'cpuCoreCount': cpuCoreCount,
      'dataCollectionOptions': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterDataCollectionOptions, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'dataStoragePercentage': ?dataStoragePercentage,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServers': dbServers,
      'displayName': displayName,
      'domain': ?domain,
      'fileSystemConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CloudVmClusterFileSystemConfiguration>, List<Map<String, dynamic>>>(fileSystemConfigurations, (value) => pulumi.Input.encodeList<CloudVmClusterFileSystemConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'giVersion': giVersion,
      'hostname': hostname,
      'licenseModel': licenseModel,
      'localBackupEnabled': ?localBackupEnabled,
      'location': ?location,
      'memorySizeInGbs': ?memorySizeInGbs,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'scanListenerPortTcpSsl': ?scanListenerPortTcpSsl,
      'sparseDiskgroupEnabled': ?sparseDiskgroupEnabled,
      'sshPublicKeys': sshPublicKeys,
      'subnetId': subnetId,
      'systemVersion': ?systemVersion,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'virtualNetworkId': virtualNetworkId,
      'zoneId': ?zoneId,
    };
  }

  factory CloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterArgs(
      backupSubnetCidr: (() { final guardedValue = map['backupSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: pulumi.Input.fromValue(map['cloudExadataInfrastructureId'] as String),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: pulumi.Input.fromValue((map['cpuCoreCount'] as num).toInt()),
      dataCollectionOptions: (() { final guardedValue = map['dataCollectionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoragePercentage: (() { final guardedValue = map['dataStoragePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dbServers: pulumi.Input.fromValue((map['dbServers'] as List).cast<String>()),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemConfigurations: (() { final guardedValue = map['fileSystemConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudVmClusterFileSystemConfiguration>(guardedValue, (value) => CloudVmClusterFileSystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      giVersion: pulumi.Input.fromValue(map['giVersion'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      licenseModel: pulumi.Input.fromValue(map['licenseModel'] as String),
      localBackupEnabled: (() { final guardedValue = map['localBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scanListenerPortTcp: (() { final guardedValue = map['scanListenerPortTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scanListenerPortTcpSsl: (() { final guardedValue = map['scanListenerPortTcpSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      sparseDiskgroupEnabled: (() { final guardedValue = map['sparseDiskgroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshPublicKeys: pulumi.Input.fromValue((map['sshPublicKeys'] as List).cast<String>()),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      systemVersion: (() { final guardedValue = map['systemVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
