// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_data_collection_option.dart';
import 'get_cloud_vm_cluster_file_system_configuration.dart';
import 'get_cloud_vm_cluster_iorm_config_cache.dart';

/// Result data returned by getCloudVmCluster.
class GetCloudVmClusterResult {
  /// Client OCI backup subnet CIDR, default is `192.168.252.0/22`.
  final String backupSubnetCidr;

  /// The Cloud Exadata Infrastructure ID.
  final String cloudExadataInfrastructureId;

  /// The cluster name for Cloud VM Cluster.
  final String clusterName;

  /// The OCID of the compartment.
  final String compartmentId;

  /// The compute model of the Exadata Infrastructure.
  final String computeModel;

  /// A `compute_nodes` block as defined below.
  final List<String> computeNodes;

  /// The number of CPU cores enabled on the Cloud VM Cluster.
  final int cpuCoreCount;

  /// A `data_collection_options` block as defined below.
  final List<GetCloudVmClusterDataCollectionOption> dataCollectionOptions;

  /// The percentage assigned to DATA storage (user data and database files). The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60`, and 80. The default is `80` percent assigned to DATA storage. See [Storage Configuration](https://docs.oracle.com/en-us/iaas/exadatacloud/index.html#Exadata) in the Exadata documentation for details on the impact of the configuration settings on storage.
  final int dataStoragePercentage;

  /// The data disk group size to be allocated in TBs.
  final double dataStorageSizeInTbs;

  /// The local node storage to be allocated in GBs.
  final int dbNodeStorageSizeInGbs;

  /// A `db_servers` block as defined below.
  final List<String> dbServers;

  /// The type of redundancy configured for the Cloud Vm Cluster. `NORMAL` is 2-way redundancy. `HIGH` is 3-way redundancy.
  final String diskRedundancy;

  /// The user-friendly name for the Cloud VM Cluster. The name does not need to be unique.
  final String displayName;

  /// The domain name for the Cloud VM Cluster.
  final String domain;

  /// A `file_system_configuration` block as defined below.
  final List<GetCloudVmClusterFileSystemConfiguration> fileSystemConfigurations;

  /// A valid Oracle Grid Infrastructure (GI) software version.
  final String giVersion;

  /// The hostname for the Cloud VM Cluster without suffix.
  final String hostname;

  /// The hostname for the Cloud VM Cluster with suffix.
  final String hostnameActual;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `iorm_config_cache` block as defined below.
  final List<GetCloudVmClusterIormConfigCache> iormConfigCaches;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the last maintenance update history entry. This value is updated when a maintenance update starts.
  final String lastUpdateHistoryEntryId;

  /// The Oracle license model that applies to the Cloud VM Cluster.
  final String licenseModel;

  /// Additional information about the current `lifecycleState`.
  final String lifecycleDetails;

  /// The current state of IORM configuration for the Exadata DB system.
  final String lifecycleState;

  /// The port number configured for the listener on the Cloud VM Cluster.
  final int listenerPort;

  /// If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If false, database backup on local Exadata storage is not available in the Cloud VM Cluster.
  final bool localBackupEnabled;

  /// The Azure Region where the Cloud VM Cluster exists.
  final String location;

  /// The memory to be allocated in GBs.
  final int memorySizeInGbs;
  final String name;

  /// The number of nodes in the Cloud VM Cluster.
  final int nodeCount;

  /// The list of [OCIDs](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) for the network security groups (NSGs) to which this resource belongs. Setting this to an empty list removes all resources from all NSGs. For more information about NSGs, see [Security Rules](https://docs.oracle.com/en-us/iaas/Content/Network/Concepts/securityrules.htm). NsgIds restrictions:
  /// * A network security group (NSG) is optional for Autonomous Databases with private access. The nsgIds list can be empty.
  final String nsgUrl;

  /// The URL of the resource in the OCI console.
  final String ociUrl;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Cloud VM Cluster.
  final String ocid;

  /// The number of OCPU cores to enable on the Cloud VM Cluster. Only 1 decimal place is allowed for the fractional part.
  final double ocpuCount;
  final String resourceGroupName;

  /// The FQDN of the DNS record for the SCAN IP addresses that are associated with the Cloud VM Cluster.
  final String scanDnsName;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DNS record for the SCAN IP addresses that are associated with the Cloud VM Cluster.
  final String scanDnsRecordId;

  /// A `scan_ip_ids` block as defined below.
  final List<String> scanIpIds;

  /// The TCP Single Client Access Name (SCAN) port. The default port is 1521.
  final int scanListenerPortTcp;

  /// The TCPS Single Client Access Name (SCAN) port. The default port is 2484.
  final int scanListenerPortTcpSsl;

  /// The model name of the Exadata hardware running the Cloud VM Cluster.
  final String shape;

  /// If true, sparse disk group is configured for the Cloud VM Cluster. If false, sparse disk group is not created.
  final bool sparseDiskgroupEnabled;

  /// The public key portion of one or more key pairs used for SSH access to the Cloud VM Cluster.
  final List<String> sshPublicKeys;

  /// The storage allocation for the disk group, in gigabytes (GB).
  final int storageSizeInGbs;

  /// The ID of the Azure Resource Manager subnet resource.
  final String subnetId;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the subnet associated with the Cloud VM Cluster.
  final String subnetOcid;

  /// Operating system version of the image.
  final String systemVersion;

  /// A mapping of tags assigned to the Cloud VM Cluster.
  final Map<String, String> tags;

  /// The date and time that the Cloud VM Cluster was created.
  final String timeCreated;

  /// The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.oracle.com/en-us/iaas/base-database/doc/manage-time-zone.html).
  final String timeZone;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the virtual IP (VIP) addresses associated with the Cloud VM Cluster. The Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the Exadata Cloud Service instance to enable failover. If one node fails, the VIP is reassigned to another active node in the Cluster.
  final List<String> vipOds;

  /// The ID to an Azure Resource Manager Virtual Network resource.
  final String virtualNetworkId;

  /// The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the zone the Cloud VM Cluster is associated with.
  final String zoneId;

  /// Creates a new [GetCloudVmClusterResult].
  /// [backupSubnetCidr] Client OCI backup subnet CIDR, default is `192.168.252.0/22`.
  /// [cloudExadataInfrastructureId] The Cloud Exadata Infrastructure ID.
  /// [clusterName] The cluster name for Cloud VM Cluster.
  /// [compartmentId] The OCID of the compartment.
  /// [computeModel] The compute model of the Exadata Infrastructure.
  /// [computeNodes] A `compute_nodes` block as defined below.
  /// [cpuCoreCount] The number of CPU cores enabled on the Cloud VM Cluster.
  /// [dataCollectionOptions] A `data_collection_options` block as defined below.
  /// [dataStoragePercentage] The percentage assigned to DATA storage (user data and database files). The remaining percentage is assigned to RECO storage (database redo logs, archive logs, and recovery manager backups). Accepted values are `35`, `40`, `60`, and 80. The default is `80` percent assigned to DATA storage. See [Storage Configuration](https://docs.oracle.com/en-us/iaas/exadatacloud/index.html#Exadata) in the Exadata documentation for details on the impact of the configuration settings on storage.
  /// [dataStorageSizeInTbs] The data disk group size to be allocated in TBs.
  /// [dbNodeStorageSizeInGbs] The local node storage to be allocated in GBs.
  /// [dbServers] A `db_servers` block as defined below.
  /// [diskRedundancy] The type of redundancy configured for the Cloud Vm Cluster. `NORMAL` is 2-way redundancy. `HIGH` is 3-way redundancy.
  /// [displayName] The user-friendly name for the Cloud VM Cluster. The name does not need to be unique.
  /// [domain] The domain name for the Cloud VM Cluster.
  /// [fileSystemConfigurations] A `file_system_configuration` block as defined below.
  /// [giVersion] A valid Oracle Grid Infrastructure (GI) software version.
  /// [hostname] The hostname for the Cloud VM Cluster without suffix.
  /// [hostnameActual] The hostname for the Cloud VM Cluster with suffix.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [iormConfigCaches] A `iorm_config_cache` block as defined below.
  /// [lastUpdateHistoryEntryId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the last maintenance update history entry. This value is updated when a maintenance update starts.
  /// [licenseModel] The Oracle license model that applies to the Cloud VM Cluster.
  /// [lifecycleDetails] Additional information about the current `lifecycleState`.
  /// [lifecycleState] The current state of IORM configuration for the Exadata DB system.
  /// [listenerPort] The port number configured for the listener on the Cloud VM Cluster.
  /// [localBackupEnabled] If true, database backup on local Exadata storage is configured for the Cloud VM Cluster. If false, database backup on local Exadata storage is not available in the Cloud VM Cluster.
  /// [location] The Azure Region where the Cloud VM Cluster exists.
  /// [memorySizeInGbs] The memory to be allocated in GBs.
  /// [name] Required.
  /// [nodeCount] The number of nodes in the Cloud VM Cluster.
  /// [nsgUrl] The list of [OCIDs](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) for the network security groups (NSGs) to which this resource belongs. Setting this to an empty list removes all resources from all NSGs. For more information about NSGs, see [Security Rules](https://docs.oracle.com/en-us/iaas/Content/Network/Concepts/securityrules.htm). NsgIds restrictions:
  /// [ociUrl] The URL of the resource in the OCI console.
  /// [ocid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the Cloud VM Cluster.
  /// [ocpuCount] The number of OCPU cores to enable on the Cloud VM Cluster. Only 1 decimal place is allowed for the fractional part.
  /// [resourceGroupName] Required.
  /// [scanDnsName] The FQDN of the DNS record for the SCAN IP addresses that are associated with the Cloud VM Cluster.
  /// [scanDnsRecordId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the DNS record for the SCAN IP addresses that are associated with the Cloud VM Cluster.
  /// [scanIpIds] A `scan_ip_ids` block as defined below.
  /// [scanListenerPortTcp] The TCP Single Client Access Name (SCAN) port. The default port is 1521.
  /// [scanListenerPortTcpSsl] The TCPS Single Client Access Name (SCAN) port. The default port is 2484.
  /// [shape] The model name of the Exadata hardware running the Cloud VM Cluster.
  /// [sparseDiskgroupEnabled] If true, sparse disk group is configured for the Cloud VM Cluster. If false, sparse disk group is not created.
  /// [sshPublicKeys] The public key portion of one or more key pairs used for SSH access to the Cloud VM Cluster.
  /// [storageSizeInGbs] The storage allocation for the disk group, in gigabytes (GB).
  /// [subnetId] The ID of the Azure Resource Manager subnet resource.
  /// [subnetOcid] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the subnet associated with the Cloud VM Cluster.
  /// [systemVersion] Operating system version of the image.
  /// [tags] A mapping of tags assigned to the Cloud VM Cluster.
  /// [timeCreated] The date and time that the Cloud VM Cluster was created.
  /// [timeZone] The time zone of the Cloud VM Cluster. For details, see [Exadata Infrastructure Time Zones](https://docs.oracle.com/en-us/iaas/base-database/doc/manage-time-zone.html).
  /// [vipOds] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the virtual IP (VIP) addresses associated with the Cloud VM Cluster. The Cluster Ready Services (CRS) creates and maintains one VIP address for each node in the Exadata Cloud Service instance to enable failover. If one node fails, the VIP is reassigned to another active node in the Cluster.
  /// [virtualNetworkId] The ID to an Azure Resource Manager Virtual Network resource.
  /// [zoneId] The [OCID](https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm) of the zone the Cloud VM Cluster is associated with.
  GetCloudVmClusterResult({
    required this.backupSubnetCidr,
    required this.cloudExadataInfrastructureId,
    required this.clusterName,
    required this.compartmentId,
    required this.computeModel,
    required this.computeNodes,
    required this.cpuCoreCount,
    required this.dataCollectionOptions,
    required this.dataStoragePercentage,
    required this.dataStorageSizeInTbs,
    required this.dbNodeStorageSizeInGbs,
    required this.dbServers,
    required this.diskRedundancy,
    required this.displayName,
    required this.domain,
    required this.fileSystemConfigurations,
    required this.giVersion,
    required this.hostname,
    required this.hostnameActual,
    required this.id,
    required this.iormConfigCaches,
    required this.lastUpdateHistoryEntryId,
    required this.licenseModel,
    required this.lifecycleDetails,
    required this.lifecycleState,
    required this.listenerPort,
    required this.localBackupEnabled,
    required this.location,
    required this.memorySizeInGbs,
    required this.name,
    required this.nodeCount,
    required this.nsgUrl,
    required this.ociUrl,
    required this.ocid,
    required this.ocpuCount,
    required this.resourceGroupName,
    required this.scanDnsName,
    required this.scanDnsRecordId,
    required this.scanIpIds,
    required this.scanListenerPortTcp,
    required this.scanListenerPortTcpSsl,
    required this.shape,
    required this.sparseDiskgroupEnabled,
    required this.sshPublicKeys,
    required this.storageSizeInGbs,
    required this.subnetId,
    required this.subnetOcid,
    required this.systemVersion,
    required this.tags,
    required this.timeCreated,
    required this.timeZone,
    required this.vipOds,
    required this.virtualNetworkId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupSubnetCidr': backupSubnetCidr,
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'clusterName': clusterName,
      'compartmentId': compartmentId,
      'computeModel': computeModel,
      'computeNodes': computeNodes,
      'cpuCoreCount': cpuCoreCount,
      'dataCollectionOptions':
          pulumi.Input.encodeList<
            GetCloudVmClusterDataCollectionOption,
            Map<String, dynamic>
          >(dataCollectionOptions, (value) => value.toMap()),
      'dataStoragePercentage': dataStoragePercentage,
      'dataStorageSizeInTbs': dataStorageSizeInTbs,
      'dbNodeStorageSizeInGbs': dbNodeStorageSizeInGbs,
      'dbServers': dbServers,
      'diskRedundancy': diskRedundancy,
      'displayName': displayName,
      'domain': domain,
      'fileSystemConfigurations':
          pulumi.Input.encodeList<
            GetCloudVmClusterFileSystemConfiguration,
            Map<String, dynamic>
          >(fileSystemConfigurations, (value) => value.toMap()),
      'giVersion': giVersion,
      'hostname': hostname,
      'hostnameActual': hostnameActual,
      'id': id,
      'iormConfigCaches':
          pulumi.Input.encodeList<
            GetCloudVmClusterIormConfigCache,
            Map<String, dynamic>
          >(iormConfigCaches, (value) => value.toMap()),
      'lastUpdateHistoryEntryId': lastUpdateHistoryEntryId,
      'licenseModel': licenseModel,
      'lifecycleDetails': lifecycleDetails,
      'lifecycleState': lifecycleState,
      'listenerPort': listenerPort,
      'localBackupEnabled': localBackupEnabled,
      'location': location,
      'memorySizeInGbs': memorySizeInGbs,
      'name': name,
      'nodeCount': nodeCount,
      'nsgUrl': nsgUrl,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'ocpuCount': ocpuCount,
      'resourceGroupName': resourceGroupName,
      'scanDnsName': scanDnsName,
      'scanDnsRecordId': scanDnsRecordId,
      'scanIpIds': scanIpIds,
      'scanListenerPortTcp': scanListenerPortTcp,
      'scanListenerPortTcpSsl': scanListenerPortTcpSsl,
      'shape': shape,
      'sparseDiskgroupEnabled': sparseDiskgroupEnabled,
      'sshPublicKeys': sshPublicKeys,
      'storageSizeInGbs': storageSizeInGbs,
      'subnetId': subnetId,
      'subnetOcid': subnetOcid,
      'systemVersion': systemVersion,
      'tags': tags,
      'timeCreated': timeCreated,
      'timeZone': timeZone,
      'vipOds': vipOds,
      'virtualNetworkId': virtualNetworkId,
      'zoneId': zoneId,
    };
  }

  factory GetCloudVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterResult(
      backupSubnetCidr: map['backupSubnetCidr'] as String,
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      clusterName: map['clusterName'] as String,
      compartmentId: map['compartmentId'] as String,
      computeModel: map['computeModel'] as String,
      computeNodes: (map['computeNodes'] as List).cast<String>(),
      cpuCoreCount: map['cpuCoreCount'] as int,
      dataCollectionOptions:
          pulumi.Input.decodeList<GetCloudVmClusterDataCollectionOption>(
            map['dataCollectionOptions']!,
            (value) => GetCloudVmClusterDataCollectionOption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      dataStoragePercentage: map['dataStoragePercentage'] as int,
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      dbNodeStorageSizeInGbs: map['dbNodeStorageSizeInGbs'] as int,
      dbServers: (map['dbServers'] as List).cast<String>(),
      diskRedundancy: map['diskRedundancy'] as String,
      displayName: map['displayName'] as String,
      domain: map['domain'] as String,
      fileSystemConfigurations:
          pulumi.Input.decodeList<GetCloudVmClusterFileSystemConfiguration>(
            map['fileSystemConfigurations']!,
            (value) => GetCloudVmClusterFileSystemConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      giVersion: map['giVersion'] as String,
      hostname: map['hostname'] as String,
      hostnameActual: map['hostnameActual'] as String,
      id: map['id'] as String,
      iormConfigCaches:
          pulumi.Input.decodeList<GetCloudVmClusterIormConfigCache>(
            map['iormConfigCaches']!,
            (value) => GetCloudVmClusterIormConfigCache.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      lastUpdateHistoryEntryId: map['lastUpdateHistoryEntryId'] as String,
      licenseModel: map['licenseModel'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      lifecycleState: map['lifecycleState'] as String,
      listenerPort: map['listenerPort'] as int,
      localBackupEnabled: map['localBackupEnabled'] as bool,
      location: map['location'] as String,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      name: map['name'] as String,
      nodeCount: map['nodeCount'] as int,
      nsgUrl: map['nsgUrl'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      ocpuCount: map['ocpuCount'] as double,
      resourceGroupName: map['resourceGroupName'] as String,
      scanDnsName: map['scanDnsName'] as String,
      scanDnsRecordId: map['scanDnsRecordId'] as String,
      scanIpIds: (map['scanIpIds'] as List).cast<String>(),
      scanListenerPortTcp: map['scanListenerPortTcp'] as int,
      scanListenerPortTcpSsl: map['scanListenerPortTcpSsl'] as int,
      shape: map['shape'] as String,
      sparseDiskgroupEnabled: map['sparseDiskgroupEnabled'] as bool,
      sshPublicKeys: (map['sshPublicKeys'] as List).cast<String>(),
      storageSizeInGbs: map['storageSizeInGbs'] as int,
      subnetId: map['subnetId'] as String,
      subnetOcid: map['subnetOcid'] as String,
      systemVersion: map['systemVersion'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeCreated: map['timeCreated'] as String,
      timeZone: map['timeZone'] as String,
      vipOds: (map['vipOds'] as List).cast<String>(),
      virtualNetworkId: map['virtualNetworkId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}
