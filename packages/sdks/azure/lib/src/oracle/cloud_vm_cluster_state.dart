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
  /// Operating system version of the Exadata image. System version must be <= Db server major version (the first two parts of the DB server version eg 23.1.X.X.XXXX). Accepted Values for Grid Infrastructure (GI) version 19.0.0.0 are 22.1.30.0.0.241204, 22.1.32.0.0.250205, 22.1.31.0.0.250110, 23.1.20.0.0.241112, 23.1.21.0.0.241204, 23.1.22.0.0.250119, 23.1.23.0.0.250207. For Grid Infrastructure (GI) version 23.0.0.0 allowed system versions are 23.1.19.0.0.241015, 23.1.20.0.0.241112, 23.1.22.0.0.250119, 23.1.21.0.0.241204, 23.1.23.0.0.250207. Changing this forces a new resource to be created.
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
  /// [systemVersion] Operating system version of the Exadata image. System version must be <= Db server major version (the first two parts of the DB server version eg 23.1.X.X.XXXX). Accepted Values for Grid Infrastructure (GI) version 19.0.0.0 are 22.1.30.0.0.241204, 22.1.32.0.0.250205, 22.1.31.0.0.250110, 23.1.20.0.0.241112, 23.1.21.0.0.241204, 23.1.22.0.0.250119, 23.1.23.0.0.250207. For Grid Infrastructure (GI) version 23.0.0.0 allowed system versions are 23.1.19.0.0.241015, 23.1.20.0.0.241112, 23.1.22.0.0.250119, 23.1.21.0.0.241204, 23.1.23.0.0.250207. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Cloud VM Cluster.
  /// [timeZone] The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.cloud.oracle.com/iaas/Content/Database/References/timezones.htm). Changing this forces a new Cloud VM Cluster to be created.
  /// [virtualNetworkId] The ID of the Virtual Network associated with the Cloud VM Cluster. Changing this forces a new Cloud VM Cluster to be created.
  /// [zoneId] The OCID of the OCI Private DNS Zone to be associated with the Cloud VM Cluster. This is required for specifying your own private domain name. Changing this forces a new Cloud VM Cluster to be created.
  CloudVmClusterState({
    pulumi.Output<String>? backupSubnetCidr,
    pulumi.Output<String>? cloudExadataInfrastructureId,
    pulumi.Output<String>? clusterName,
    pulumi.Output<int>? cpuCoreCount,
    pulumi.Output<CloudVmClusterDataCollectionOptions>? dataCollectionOptions,
    pulumi.Output<int>? dataStoragePercentage,
    pulumi.Output<double>? dataStorageSizeInTbs,
    pulumi.Output<int>? dbNodeStorageSizeInGbs,
    pulumi.Output<List<String>>? dbServers,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? domain,
    pulumi.Output<List<CloudVmClusterFileSystemConfiguration>>? fileSystemConfigurations,
    pulumi.Output<String>? giVersion,
    pulumi.Output<String>? hostname,
    pulumi.Output<String>? hostnameActual,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<bool>? localBackupEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<int>? memorySizeInGbs,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ocid,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<int>? scanListenerPortTcp,
    pulumi.Output<int>? scanListenerPortTcpSsl,
    pulumi.Output<bool>? sparseDiskgroupEnabled,
    pulumi.Output<List<String>>? sshPublicKeys,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? systemVersion,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? timeZone,
    pulumi.Output<String>? virtualNetworkId,
    pulumi.Output<String>? zoneId,
  }) :
      backupSubnetCidr = pulumi.Input.asOptionalInput<String>(backupSubnetCidr),
      cloudExadataInfrastructureId = pulumi.Input.asOptionalInput<String>(cloudExadataInfrastructureId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      cpuCoreCount = pulumi.Input.asOptionalInput<int>(cpuCoreCount),
      dataCollectionOptions = pulumi.Input.asOptionalInput<CloudVmClusterDataCollectionOptions>(dataCollectionOptions),
      dataStoragePercentage = pulumi.Input.asOptionalInput<int>(dataStoragePercentage),
      dataStorageSizeInTbs = pulumi.Input.asOptionalInput<double>(dataStorageSizeInTbs),
      dbNodeStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(dbNodeStorageSizeInGbs),
      dbServers = pulumi.Input.asOptionalInput<List<String>>(dbServers),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      fileSystemConfigurations = pulumi.Input.asOptionalInput<List<CloudVmClusterFileSystemConfiguration>>(fileSystemConfigurations),
      giVersion = pulumi.Input.asOptionalInput<String>(giVersion),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      hostnameActual = pulumi.Input.asOptionalInput<String>(hostnameActual),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      localBackupEnabled = pulumi.Input.asOptionalInput<bool>(localBackupEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      memorySizeInGbs = pulumi.Input.asOptionalInput<int>(memorySizeInGbs),
      name = pulumi.Input.asOptionalInput<String>(name),
      ocid = pulumi.Input.asOptionalInput<String>(ocid),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scanListenerPortTcp = pulumi.Input.asOptionalInput<int>(scanListenerPortTcp),
      scanListenerPortTcpSsl = pulumi.Input.asOptionalInput<int>(scanListenerPortTcpSsl),
      sparseDiskgroupEnabled = pulumi.Input.asOptionalInput<bool>(sparseDiskgroupEnabled),
      sshPublicKeys = pulumi.Input.asOptionalInput<List<String>>(sshPublicKeys),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      systemVersion = pulumi.Input.asOptionalInput<String>(systemVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      backupSubnetCidr: map['backupSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['backupSubnetCidr'] as String),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : pulumi.Output.create<String>(map['cloudExadataInfrastructureId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : pulumi.Output.create<int>(map['cpuCoreCount'] as int),
      dataCollectionOptions: map['dataCollectionOptions'] == null ? null : pulumi.Output.create<CloudVmClusterDataCollectionOptions>(CloudVmClusterDataCollectionOptions.fromMap((map['dataCollectionOptions'] as Map).cast<String, dynamic>())),
      dataStoragePercentage: map['dataStoragePercentage'] == null ? null : pulumi.Output.create<int>(map['dataStoragePercentage'] as int),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : pulumi.Output.create<double>(map['dataStorageSizeInTbs'] as double),
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['dbNodeStorageSizeInGbs'] as int),
      dbServers: map['dbServers'] == null ? null : pulumi.Output.create<List<String>>((map['dbServers'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      fileSystemConfigurations: map['fileSystemConfigurations'] == null ? null : pulumi.Output.create<List<CloudVmClusterFileSystemConfiguration>>(pulumi.Input.decodeList<CloudVmClusterFileSystemConfiguration>(map['fileSystemConfigurations'], (value) => CloudVmClusterFileSystemConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      giVersion: map['giVersion'] == null ? null : pulumi.Output.create<String>(map['giVersion'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      hostnameActual: map['hostnameActual'] == null ? null : pulumi.Output.create<String>(map['hostnameActual'] as String),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      localBackupEnabled: map['localBackupEnabled'] == null ? null : pulumi.Output.create<bool>(map['localBackupEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : pulumi.Output.create<int>(map['memorySizeInGbs'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ocid: map['ocid'] == null ? null : pulumi.Output.create<String>(map['ocid'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scanListenerPortTcp: map['scanListenerPortTcp'] == null ? null : pulumi.Output.create<int>(map['scanListenerPortTcp'] as int),
      scanListenerPortTcpSsl: map['scanListenerPortTcpSsl'] == null ? null : pulumi.Output.create<int>(map['scanListenerPortTcpSsl'] as int),
      sparseDiskgroupEnabled: map['sparseDiskgroupEnabled'] == null ? null : pulumi.Output.create<bool>(map['sparseDiskgroupEnabled'] as bool),
      sshPublicKeys: map['sshPublicKeys'] == null ? null : pulumi.Output.create<List<String>>((map['sshPublicKeys'] as List).cast<String>()),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      systemVersion: map['systemVersion'] == null ? null : pulumi.Output.create<String>(map['systemVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

