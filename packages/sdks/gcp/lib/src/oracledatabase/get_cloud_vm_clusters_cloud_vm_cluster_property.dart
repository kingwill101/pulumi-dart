// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster_property_diagnostics_data_collection_option.dart';
import 'get_cloud_vm_clusters_cloud_vm_cluster_property_time_zone.dart';

class GetCloudVmClustersCloudVmClusterProperty {
  /// OCI Cluster name.
  final pulumi.Input<String> clusterName;
  /// Compartment ID of cluster.
  final pulumi.Input<String> compartmentId;
  /// Number of enabled CPU cores.
  final pulumi.Input<int> cpuCoreCount;
  /// The data disk group size to be allocated in TBs.
  final pulumi.Input<double> dataStorageSizeTb;
  /// Local storage per VM
  final pulumi.Input<int> dbNodeStorageSizeGb;
  /// OCID of database servers.
  final pulumi.Input<List<String>> dbServerOcids;
  /// Data collection options for diagnostics.
  final pulumi.Input<List<GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption>> diagnosticsDataCollectionOptions;
  /// The type of redundancy.
  /// Possible values:
  /// DISK_REDUNDANCY_UNSPECIFIED
  /// HIGH
  /// NORMAL
  final pulumi.Input<String> diskRedundancy;
  /// DNS listener IP.
  final pulumi.Input<String> dnsListenerIp;
  /// Parent DNS domain where SCAN DNS and hosts names are qualified.
  /// ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
  final pulumi.Input<String> domain;
  /// Grid Infrastructure Version.
  final pulumi.Input<String> giVersion;
  /// host name without domain.
  /// format: "-" with some suffix.
  /// ex: sp2-yi0xq where "sp2" is the hostname_prefix.
  final pulumi.Input<String> hostname;
  /// Prefix for VM cluster host names.
  final pulumi.Input<String> hostnamePrefix;
  /// License type of VM Cluster.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String> licenseType;
  /// Use local backup.
  final pulumi.Input<bool> localBackupEnabled;
  /// Memory allocated in GBs.
  final pulumi.Input<int> memorySizeGb;
  /// Number of database servers.
  final pulumi.Input<int> nodeCount;
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String> ociUrl;
  /// Oracle Cloud Infrastructure ID of VM Cluster.
  final pulumi.Input<String> ocid;
  /// OCPU count per VM. Minimum is 0.1.
  final pulumi.Input<double> ocpuCount;
  /// SCAN DNS name.
  /// ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com
  final pulumi.Input<String> scanDns;
  /// OCID of scan DNS record.
  final pulumi.Input<String> scanDnsRecordId;
  /// OCIDs of scan IPs.
  final pulumi.Input<List<String>> scanIpIds;
  /// SCAN listener port - TCP
  final pulumi.Input<int> scanListenerPortTcp;
  /// SCAN listener port - TLS
  final pulumi.Input<int> scanListenerPortTcpSsl;
  /// Shape of VM Cluster.
  final pulumi.Input<String> shape;
  /// Use exadata sparse snapshots.
  final pulumi.Input<bool> sparseDiskgroupEnabled;
  /// SSH public keys to be stored with cluster.
  final pulumi.Input<List<String>> sshPublicKeys;
  /// State of the cluster.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MAINTENANCE_IN_PROGRESS
  final pulumi.Input<String> state;
  /// The storage management type of the VM Cluster.
  /// Possible values:
  /// STORAGE_MANAGEMENT_TYPE_UNSPECIFIED
  /// ASM
  /// EXASCALE
  final pulumi.Input<String> storageManagementType;
  /// The storage allocation for the disk group, in gigabytes (GB).
  final pulumi.Input<int> storageSizeGb;
  /// Operating system version of the image.
  final pulumi.Input<String> systemVersion;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  final pulumi.Input<List<GetCloudVmClustersCloudVmClusterPropertyTimeZone>> timeZones;

  /// Creates a new [GetCloudVmClustersCloudVmClusterProperty].
  /// [clusterName] OCI Cluster name.
  /// [compartmentId] Compartment ID of cluster.
  /// [cpuCoreCount] Number of enabled CPU cores.
  /// [dataStorageSizeTb] The data disk group size to be allocated in TBs.
  /// [dbNodeStorageSizeGb] Local storage per VM
  /// [dbServerOcids] OCID of database servers.
  /// [diagnosticsDataCollectionOptions] Data collection options for diagnostics.
  /// [diskRedundancy] The type of redundancy.
  /// [dnsListenerIp] DNS listener IP.
  /// [domain] Parent DNS domain where SCAN DNS and hosts names are qualified.
  /// [giVersion] Grid Infrastructure Version.
  /// [hostname] host name without domain.
  /// [hostnamePrefix] Prefix for VM cluster host names.
  /// [licenseType] License type of VM Cluster.
  /// [localBackupEnabled] Use local backup.
  /// [memorySizeGb] Memory allocated in GBs.
  /// [nodeCount] Number of database servers.
  /// [ociUrl] Deep link to the OCI console to view this resource.
  /// [ocid] Oracle Cloud Infrastructure ID of VM Cluster.
  /// [ocpuCount] OCPU count per VM. Minimum is 0.1.
  /// [scanDns] SCAN DNS name.
  /// [scanDnsRecordId] OCID of scan DNS record.
  /// [scanIpIds] OCIDs of scan IPs.
  /// [scanListenerPortTcp] SCAN listener port - TCP
  /// [scanListenerPortTcpSsl] SCAN listener port - TLS
  /// [shape] Shape of VM Cluster.
  /// [sparseDiskgroupEnabled] Use exadata sparse snapshots.
  /// [sshPublicKeys] SSH public keys to be stored with cluster.
  /// [state] State of the cluster.
  /// [storageManagementType] The storage management type of the VM Cluster.
  /// [storageSizeGb] The storage allocation for the disk group, in gigabytes (GB).
  /// [systemVersion] Operating system version of the image.
  /// [timeZones] Represents a time zone from the
  const GetCloudVmClustersCloudVmClusterProperty({
    required this.clusterName,
    required this.compartmentId,
    required this.cpuCoreCount,
    required this.dataStorageSizeTb,
    required this.dbNodeStorageSizeGb,
    required this.dbServerOcids,
    required this.diagnosticsDataCollectionOptions,
    required this.diskRedundancy,
    required this.dnsListenerIp,
    required this.domain,
    required this.giVersion,
    required this.hostname,
    required this.hostnamePrefix,
    required this.licenseType,
    required this.localBackupEnabled,
    required this.memorySizeGb,
    required this.nodeCount,
    required this.ociUrl,
    required this.ocid,
    required this.ocpuCount,
    required this.scanDns,
    required this.scanDnsRecordId,
    required this.scanIpIds,
    required this.scanListenerPortTcp,
    required this.scanListenerPortTcpSsl,
    required this.shape,
    required this.sparseDiskgroupEnabled,
    required this.sshPublicKeys,
    required this.state,
    required this.storageManagementType,
    required this.storageSizeGb,
    required this.systemVersion,
    required this.timeZones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'compartmentId': compartmentId,
      'cpuCoreCount': cpuCoreCount,
      'dataStorageSizeTb': dataStorageSizeTb,
      'dbNodeStorageSizeGb': dbNodeStorageSizeGb,
      'dbServerOcids': dbServerOcids,
      'diagnosticsDataCollectionOptions': pulumi.Input.mapInputValue<List<GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption>, List<Map<String, dynamic>>>(diagnosticsDataCollectionOptions, (value) => pulumi.Input.encodeList<GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskRedundancy': diskRedundancy,
      'dnsListenerIp': dnsListenerIp,
      'domain': domain,
      'giVersion': giVersion,
      'hostname': hostname,
      'hostnamePrefix': hostnamePrefix,
      'licenseType': licenseType,
      'localBackupEnabled': localBackupEnabled,
      'memorySizeGb': memorySizeGb,
      'nodeCount': nodeCount,
      'ociUrl': ociUrl,
      'ocid': ocid,
      'ocpuCount': ocpuCount,
      'scanDns': scanDns,
      'scanDnsRecordId': scanDnsRecordId,
      'scanIpIds': scanIpIds,
      'scanListenerPortTcp': scanListenerPortTcp,
      'scanListenerPortTcpSsl': scanListenerPortTcpSsl,
      'shape': shape,
      'sparseDiskgroupEnabled': sparseDiskgroupEnabled,
      'sshPublicKeys': sshPublicKeys,
      'state': state,
      'storageManagementType': storageManagementType,
      'storageSizeGb': storageSizeGb,
      'systemVersion': systemVersion,
      'timeZones': pulumi.Input.mapInputValue<List<GetCloudVmClustersCloudVmClusterPropertyTimeZone>, List<Map<String, dynamic>>>(timeZones, (value) => pulumi.Input.encodeList<GetCloudVmClustersCloudVmClusterPropertyTimeZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCloudVmClustersCloudVmClusterProperty.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmClusterProperty(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      compartmentId: pulumi.Input.fromValue(map['compartmentId'] as String),
      cpuCoreCount: pulumi.Input.fromValue((map['cpuCoreCount'] as num).toInt()),
      dataStorageSizeTb: pulumi.Input.fromValue((map['dataStorageSizeTb'] as num).toDouble()),
      dbNodeStorageSizeGb: pulumi.Input.fromValue((map['dbNodeStorageSizeGb'] as num).toInt()),
      dbServerOcids: pulumi.Input.fromValue((map['dbServerOcids'] as List).cast<String>()),
      diagnosticsDataCollectionOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption>(map['diagnosticsDataCollectionOptions']!, (value) => GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption.fromMap((value as Map).cast<String, dynamic>()))),
      diskRedundancy: pulumi.Input.fromValue(map['diskRedundancy'] as String),
      dnsListenerIp: pulumi.Input.fromValue(map['dnsListenerIp'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      giVersion: pulumi.Input.fromValue(map['giVersion'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      hostnamePrefix: pulumi.Input.fromValue(map['hostnamePrefix'] as String),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      localBackupEnabled: pulumi.Input.fromValue(map['localBackupEnabled'] as bool),
      memorySizeGb: pulumi.Input.fromValue((map['memorySizeGb'] as num).toInt()),
      nodeCount: pulumi.Input.fromValue((map['nodeCount'] as num).toInt()),
      ociUrl: pulumi.Input.fromValue(map['ociUrl'] as String),
      ocid: pulumi.Input.fromValue(map['ocid'] as String),
      ocpuCount: pulumi.Input.fromValue((map['ocpuCount'] as num).toDouble()),
      scanDns: pulumi.Input.fromValue(map['scanDns'] as String),
      scanDnsRecordId: pulumi.Input.fromValue(map['scanDnsRecordId'] as String),
      scanIpIds: pulumi.Input.fromValue((map['scanIpIds'] as List).cast<String>()),
      scanListenerPortTcp: pulumi.Input.fromValue((map['scanListenerPortTcp'] as num).toInt()),
      scanListenerPortTcpSsl: pulumi.Input.fromValue((map['scanListenerPortTcpSsl'] as num).toInt()),
      shape: pulumi.Input.fromValue(map['shape'] as String),
      sparseDiskgroupEnabled: pulumi.Input.fromValue(map['sparseDiskgroupEnabled'] as bool),
      sshPublicKeys: pulumi.Input.fromValue((map['sshPublicKeys'] as List).cast<String>()),
      state: pulumi.Input.fromValue(map['state'] as String),
      storageManagementType: pulumi.Input.fromValue(map['storageManagementType'] as String),
      storageSizeGb: pulumi.Input.fromValue((map['storageSizeGb'] as num).toInt()),
      systemVersion: pulumi.Input.fromValue(map['systemVersion'] as String),
      timeZones: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCloudVmClustersCloudVmClusterPropertyTimeZone>(map['timeZones']!, (value) => GetCloudVmClustersCloudVmClusterPropertyTimeZone.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
