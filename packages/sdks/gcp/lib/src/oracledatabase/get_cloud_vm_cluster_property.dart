// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_cluster_property_diagnostics_data_collection_option.dart';
import 'get_cloud_vm_cluster_property_time_zone.dart';

class GetCloudVmClusterProperty {
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
  final pulumi.Input<List<GetCloudVmClusterPropertyDiagnosticsDataCollectionOption>> diagnosticsDataCollectionOptions;
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
  /// The storage allocation for the disk group, in gigabytes (GB).
  final pulumi.Input<int> storageSizeGb;
  /// Operating system version of the image.
  final pulumi.Input<String> systemVersion;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  final pulumi.Input<List<GetCloudVmClusterPropertyTimeZone>> timeZones;

  /// Creates a new [GetCloudVmClusterProperty].
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
  /// [storageSizeGb] The storage allocation for the disk group, in gigabytes (GB).
  /// [systemVersion] Operating system version of the image.
  /// [timeZones] Represents a time zone from the
  GetCloudVmClusterProperty({
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
      'diagnosticsDataCollectionOptions': pulumi.Input.mapInputValue<List<GetCloudVmClusterPropertyDiagnosticsDataCollectionOption>, List<Map<String, dynamic>>>(diagnosticsDataCollectionOptions, (value) => pulumi.Input.encodeList<GetCloudVmClusterPropertyDiagnosticsDataCollectionOption, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'storageSizeGb': storageSizeGb,
      'systemVersion': systemVersion,
      'timeZones': pulumi.Input.mapInputValue<List<GetCloudVmClusterPropertyTimeZone>, List<Map<String, dynamic>>>(timeZones, (value) => pulumi.Input.encodeList<GetCloudVmClusterPropertyTimeZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCloudVmClusterProperty.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterProperty(
      clusterName: (map['clusterName'] as String).input(),
      compartmentId: (map['compartmentId'] as String).input(),
      cpuCoreCount: (map['cpuCoreCount'] as int).input(),
      dataStorageSizeTb: (map['dataStorageSizeTb'] as double).input(),
      dbNodeStorageSizeGb: (map['dbNodeStorageSizeGb'] as int).input(),
      dbServerOcids: ((map['dbServerOcids'] as List).cast<String>()).input(),
      diagnosticsDataCollectionOptions: (pulumi.Input.decodeList<GetCloudVmClusterPropertyDiagnosticsDataCollectionOption>(map['diagnosticsDataCollectionOptions'], (value) => GetCloudVmClusterPropertyDiagnosticsDataCollectionOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskRedundancy: (map['diskRedundancy'] as String).input(),
      dnsListenerIp: (map['dnsListenerIp'] as String).input(),
      domain: (map['domain'] as String).input(),
      giVersion: (map['giVersion'] as String).input(),
      hostname: (map['hostname'] as String).input(),
      hostnamePrefix: (map['hostnamePrefix'] as String).input(),
      licenseType: (map['licenseType'] as String).input(),
      localBackupEnabled: (map['localBackupEnabled'] as bool).input(),
      memorySizeGb: (map['memorySizeGb'] as int).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      ociUrl: (map['ociUrl'] as String).input(),
      ocid: (map['ocid'] as String).input(),
      ocpuCount: (map['ocpuCount'] as double).input(),
      scanDns: (map['scanDns'] as String).input(),
      scanDnsRecordId: (map['scanDnsRecordId'] as String).input(),
      scanIpIds: ((map['scanIpIds'] as List).cast<String>()).input(),
      scanListenerPortTcp: (map['scanListenerPortTcp'] as int).input(),
      scanListenerPortTcpSsl: (map['scanListenerPortTcpSsl'] as int).input(),
      shape: (map['shape'] as String).input(),
      sparseDiskgroupEnabled: (map['sparseDiskgroupEnabled'] as bool).input(),
      sshPublicKeys: ((map['sshPublicKeys'] as List).cast<String>()).input(),
      state: (map['state'] as String).input(),
      storageSizeGb: (map['storageSizeGb'] as int).input(),
      systemVersion: (map['systemVersion'] as String).input(),
      timeZones: (pulumi.Input.decodeList<GetCloudVmClusterPropertyTimeZone>(map['timeZones'], (value) => GetCloudVmClusterPropertyTimeZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

