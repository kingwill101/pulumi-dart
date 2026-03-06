// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_data_collection_options.dart';
import 'cloud_vm_cluster_file_system_configuration.dart';

/// Input properties used for looking up and filtering CloudVmCluster resources.
class CloudVmClusterState {
  /// The backup subnet CIDR of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? backupSubnetCidr;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata infrastructure. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// The cluster name for Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? clusterName;
  /// The number of CPU cores enabled on the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int>? cpuCoreCount;
  /// A `data_collection_options` block as defined below. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<CloudVmClusterDataCollectionOptions>? dataCollectionOptions;
  /// The percentage assigned to DATA storage (user data and database files). Changing this forces a new Cloud VM Cluster to be created. The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60` and `80`.
  final pulumi.Input<int>? dataStoragePercentage;
  /// The data disk group size to be allocated in TBs. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<double>? dataStorageSizeInTbs;
  /// The local node storage to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int>? dbNodeStorageSizeInGbs;
  /// The list of DB servers. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<List<String>>? dbServers;
  /// The user-friendly name for the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created. The name does not need to be unique.
  final pulumi.Input<String>? displayName;
  /// The name of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? domain;
  /// A `file_system_configuration` block as defined below.
  final pulumi.Input<List<CloudVmClusterFileSystemConfiguration>>? fileSystemConfigurations;
  /// A valid Oracle Grid Infrastructure (GI) software version. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? giVersion;
  /// The hostname for the Cloud VM Cluster without suffix. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? hostname;
  /// The hostname for the Cloud VM Cluster with suffix.
  final pulumi.Input<String>? hostnameActual;
  /// The Oracle license model that applies to the Cloud VM Cluster, either `BringYourOwnLicense` or `LicenseIncluded`. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? licenseModel;
  /// If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If `false`, database backup on local Exadata storage is not available in the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool>? localBackupEnabled;
  /// The Azure Region where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? location;
  /// The memory to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int>? memorySizeInGbs;
  /// The name which should be used for this Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? name;
  /// The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud VM Cluster.
  final pulumi.Input<String>? ocid;
  /// The name of the Resource Group where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The TCP Single Client Access Name (SCAN) port. The default port to 1521. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int>? scanListenerPortTcp;
  /// The TCPS Single Client Access Name (SCAN) port. The default port to 2484. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<int>? scanListenerPortTcpSsl;
  /// If true, the sparse disk group is configured for the Cloud VM Cluster. If `false`, the sparse disk group is not created. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool>? sparseDiskgroupEnabled;
  /// The public key portion of one or more key pairs used for SSH access to the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<List<String>>? sshPublicKeys;
  /// The ID of the subnet associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? subnetId;
  /// Operating system version of the Exadata image. System version must be &lt;= Db server major version (the first two parts of the DB server version eg 23.1.X.X.XXXX). Accepted Values for Grid Infrastructure (GI) version 19.0.0.0 are 22.1.30.0.0.241204, 22.1.32.0.0.250205, 22.1.31.0.0.250110, 23.1.20.0.0.241112, 23.1.21.0.0.241204, 23.1.22.0.0.250119, 23.1.23.0.0.250207. For Grid Infrastructure (GI) version 23.0.0.0 allowed system versions are 23.1.19.0.0.241015, 23.1.20.0.0.241112, 23.1.22.0.0.250119, 23.1.21.0.0.241204, 23.1.23.0.0.250207. Changing this forces a new resource to be created.
  final pulumi.Input<String>? systemVersion;
  /// A mapping of tags which should be assigned to the Cloud VM Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.cloud.oracle.com/iaas/Content/Database/References/timezones.htm). Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? timeZone;
  /// The ID of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? virtualNetworkId;
  /// The OCID of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [CloudVmClusterState].
  /// [backupSubnetCidr] The backup subnet CIDR of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [cloudExadataInfrastructureId] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud Exadata infrastructure. Changing this forces a new Cloud VM Cluster to be created.
  /// [clusterName] The cluster name for Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [cpuCoreCount] The number of CPU cores enabled on the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [dataCollectionOptions] A `data_collection_options` block as defined below. Changing this forces a new Cloud VM Cluster to be created.
  /// [dataStoragePercentage] The percentage assigned to DATA storage (user data and database files). Changing this forces a new Cloud VM Cluster to be created. The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60` and `80`.
  /// [dataStorageSizeInTbs] The data disk group size to be allocated in TBs. Changing this forces a new Cloud VM Cluster to be created.
  /// [dbNodeStorageSizeInGbs] The local node storage to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  /// [dbServers] The list of DB servers. Changing this forces a new Cloud VM Cluster to be created.
  /// [displayName] The user-friendly name for the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created. The name does not need to be unique.
  /// [domain] The name of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  /// [fileSystemConfigurations] A `file_system_configuration` block as defined below.
  /// [giVersion] A valid Oracle Grid Infrastructure (GI) software version. Changing this forces a new Cloud VM Cluster to be created.
  /// [hostname] The hostname for the Cloud VM Cluster without suffix. Changing this forces a new Cloud VM Cluster to be created.
  /// [hostnameActual] The hostname for the Cloud VM Cluster with suffix.
  /// [licenseModel] The Oracle license model that applies to the Cloud VM Cluster, either `BringYourOwnLicense` or `LicenseIncluded`. Changing this forces a new Cloud VM Cluster to be created.
  /// [localBackupEnabled] If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If `false`, database backup on local Exadata storage is not available in the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [location] The Azure Region where the Cloud VM Cluster should exist. Changing this forces a new Cloud VM Cluster to be created.
  /// [memorySizeInGbs] The memory to be allocated in GBs. Changing this forces a new Cloud VM Cluster to be created.
  /// [name] The name which should be used for this Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [ocid] The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the Cloud VM Cluster.
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
  const CloudVmClusterState({
    this.backupSubnetCidr,
    this.cloudExadataInfrastructureId,
    this.clusterName,
    this.cpuCoreCount,
    this.dataCollectionOptions,
    this.dataStoragePercentage,
    this.dataStorageSizeInTbs,
    this.dbNodeStorageSizeInGbs,
    this.dbServers,
    this.displayName,
    this.domain,
    this.fileSystemConfigurations,
    this.giVersion,
    this.hostname,
    this.hostnameActual,
    this.licenseModel,
    this.localBackupEnabled,
    this.location,
    this.memorySizeInGbs,
    this.name,
    this.ocid,
    this.resourceGroupName,
    this.scanListenerPortTcp,
    this.scanListenerPortTcpSsl,
    this.sparseDiskgroupEnabled,
    this.sshPublicKeys,
    this.subnetId,
    this.systemVersion,
    this.tags,
    this.timeZone,
    this.virtualNetworkId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSubnetCidr': ?backupSubnetCidr,
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'clusterName': ?clusterName,
      'cpuCoreCount': ?cpuCoreCount,
      'dataCollectionOptions': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterDataCollectionOptions, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'dataStoragePercentage': ?dataStoragePercentage,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': ?dbNodeStorageSizeInGbs,
      'dbServers': ?dbServers,
      'displayName': ?displayName,
      'domain': ?domain,
      'fileSystemConfigurations': ?pulumi.Input.mapOptionalInputValue<List<CloudVmClusterFileSystemConfiguration>, List<Map<String, dynamic>>>(fileSystemConfigurations, (value) => pulumi.Input.encodeList<CloudVmClusterFileSystemConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'giVersion': ?giVersion,
      'hostname': ?hostname,
      'hostnameActual': ?hostnameActual,
      'licenseModel': ?licenseModel,
      'localBackupEnabled': ?localBackupEnabled,
      'location': ?location,
      'memorySizeInGbs': ?memorySizeInGbs,
      'name': ?name,
      'ocid': ?ocid,
      'resourceGroupName': ?resourceGroupName,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'scanListenerPortTcpSsl': ?scanListenerPortTcpSsl,
      'sparseDiskgroupEnabled': ?sparseDiskgroupEnabled,
      'sshPublicKeys': ?sshPublicKeys,
      'subnetId': ?subnetId,
      'systemVersion': ?systemVersion,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'virtualNetworkId': ?virtualNetworkId,
      'zoneId': ?zoneId,
    };
  }

  factory CloudVmClusterState.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterState(
      backupSubnetCidr: (() { final guardedValue = map['backupSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataCollectionOptions: (() { final guardedValue = map['dataCollectionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataStoragePercentage: (() { final guardedValue = map['dataStoragePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dbNodeStorageSizeInGbs: (() { final guardedValue = map['dbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemConfigurations: (() { final guardedValue = map['fileSystemConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CloudVmClusterFileSystemConfiguration>(guardedValue, (value) => CloudVmClusterFileSystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      giVersion: (() { final guardedValue = map['giVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnameActual: (() { final guardedValue = map['hostnameActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localBackupEnabled: (() { final guardedValue = map['localBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanListenerPortTcp: (() { final guardedValue = map['scanListenerPortTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scanListenerPortTcpSsl: (() { final guardedValue = map['scanListenerPortTcpSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sparseDiskgroupEnabled: (() { final guardedValue = map['sparseDiskgroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshPublicKeys: (() { final guardedValue = map['sshPublicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systemVersion: (() { final guardedValue = map['systemVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

