// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_vm_cluster_properties_diagnostics_data_collection_options.dart';
import 'cloud_vm_cluster_properties_time_zone.dart';

class CloudVmClusterProperties {
  /// OCI Cluster name.
  final pulumi.Input<String>? clusterName;
  /// (Output)
  /// Compartment ID of cluster.
  final pulumi.Input<String>? compartmentId;
  /// Number of enabled CPU cores.
  final pulumi.Input<int> cpuCoreCount;
  /// The data disk group size to be allocated in TBs.
  final pulumi.Input<double>? dataStorageSizeTb;
  /// Local storage per VM
  final pulumi.Input<int>? dbNodeStorageSizeGb;
  /// OCID of database servers.
  final pulumi.Input<List<String>>? dbServerOcids;
  /// Data collection options for diagnostics.
  /// Structure is documented below.
  final pulumi.Input<CloudVmClusterPropertiesDiagnosticsDataCollectionOptions>? diagnosticsDataCollectionOptions;
  /// The type of redundancy.
  /// Possible values:
  /// DISK_REDUNDANCY_UNSPECIFIED
  /// HIGH
  /// NORMAL
  final pulumi.Input<String>? diskRedundancy;
  /// (Output)
  /// DNS listener IP.
  final pulumi.Input<String>? dnsListenerIp;
  /// (Output)
  /// Parent DNS domain where SCAN DNS and hosts names are qualified.
  /// ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
  final pulumi.Input<String>? domain;
  /// Grid Infrastructure Version.
  final pulumi.Input<String>? giVersion;
  /// (Output)
  /// host name without domain.
  /// format: "-" with some suffix.
  /// ex: sp2-yi0xq where "sp2" is the hostname_prefix.
  final pulumi.Input<String>? hostname;
  /// Prefix for VM cluster host names.
  final pulumi.Input<String>? hostnamePrefix;
  /// License type of VM Cluster.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String> licenseType;
  /// Use local backup.
  final pulumi.Input<bool>? localBackupEnabled;
  /// Memory allocated in GBs.
  final pulumi.Input<int>? memorySizeGb;
  /// Number of database servers.
  final pulumi.Input<int>? nodeCount;
  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String>? ociUrl;
  /// (Output)
  /// Oracle Cloud Infrastructure ID of VM Cluster.
  final pulumi.Input<String>? ocid;
  /// OCPU count per VM. Minimum is 0.1.
  final pulumi.Input<double>? ocpuCount;
  /// (Output)
  /// SCAN DNS name.
  /// ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com
  final pulumi.Input<String>? scanDns;
  /// (Output)
  /// OCID of scan DNS record.
  final pulumi.Input<String>? scanDnsRecordId;
  /// (Output)
  /// OCIDs of scan IPs.
  final pulumi.Input<List<String>>? scanIpIds;
  /// (Output)
  /// SCAN listener port - TCP
  final pulumi.Input<int>? scanListenerPortTcp;
  /// (Output)
  /// SCAN listener port - TLS
  final pulumi.Input<int>? scanListenerPortTcpSsl;
  /// (Output)
  /// Shape of VM Cluster.
  final pulumi.Input<String>? shape;
  /// Use exadata sparse snapshots.
  final pulumi.Input<bool>? sparseDiskgroupEnabled;
  /// SSH public keys to be stored with cluster.
  final pulumi.Input<List<String>>? sshPublicKeys;
  /// (Output)
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
  final pulumi.Input<String>? state;
  /// (Output)
  /// The storage management type of the VM Cluster.
  /// Possible values:
  /// STORAGE_MANAGEMENT_TYPE_UNSPECIFIED
  /// ASM
  /// EXASCALE
  final pulumi.Input<String>? storageManagementType;
  /// (Output)
  /// The storage allocation for the disk group, in gigabytes (GB).
  final pulumi.Input<int>? storageSizeGb;
  /// (Output)
  /// Operating system version of the image.
  final pulumi.Input<String>? systemVersion;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final pulumi.Input<CloudVmClusterPropertiesTimeZone>? timeZone;

  /// Creates a new [CloudVmClusterProperties].
  /// [clusterName] OCI Cluster name.
  /// [compartmentId] (Output)
  /// [cpuCoreCount] Number of enabled CPU cores.
  /// [dataStorageSizeTb] The data disk group size to be allocated in TBs.
  /// [dbNodeStorageSizeGb] Local storage per VM
  /// [dbServerOcids] OCID of database servers.
  /// [diagnosticsDataCollectionOptions] Data collection options for diagnostics.
  /// [diskRedundancy] The type of redundancy.
  /// [dnsListenerIp] (Output)
  /// [domain] (Output)
  /// [giVersion] Grid Infrastructure Version.
  /// [hostname] (Output)
  /// [hostnamePrefix] Prefix for VM cluster host names.
  /// [licenseType] License type of VM Cluster.
  /// [localBackupEnabled] Use local backup.
  /// [memorySizeGb] Memory allocated in GBs.
  /// [nodeCount] Number of database servers.
  /// [ociUrl] (Output)
  /// [ocid] (Output)
  /// [ocpuCount] OCPU count per VM. Minimum is 0.1.
  /// [scanDns] (Output)
  /// [scanDnsRecordId] (Output)
  /// [scanIpIds] (Output)
  /// [scanListenerPortTcp] (Output)
  /// [scanListenerPortTcpSsl] (Output)
  /// [shape] (Output)
  /// [sparseDiskgroupEnabled] Use exadata sparse snapshots.
  /// [sshPublicKeys] SSH public keys to be stored with cluster.
  /// [state] (Output)
  /// [storageManagementType] (Output)
  /// [storageSizeGb] (Output)
  /// [systemVersion] (Output)
  /// [timeZone] Represents a time zone from the
  const CloudVmClusterProperties({
    this.clusterName,
    this.compartmentId,
    required this.cpuCoreCount,
    this.dataStorageSizeTb,
    this.dbNodeStorageSizeGb,
    this.dbServerOcids,
    this.diagnosticsDataCollectionOptions,
    this.diskRedundancy,
    this.dnsListenerIp,
    this.domain,
    this.giVersion,
    this.hostname,
    this.hostnamePrefix,
    required this.licenseType,
    this.localBackupEnabled,
    this.memorySizeGb,
    this.nodeCount,
    this.ociUrl,
    this.ocid,
    this.ocpuCount,
    this.scanDns,
    this.scanDnsRecordId,
    this.scanIpIds,
    this.scanListenerPortTcp,
    this.scanListenerPortTcpSsl,
    this.shape,
    this.sparseDiskgroupEnabled,
    this.sshPublicKeys,
    this.state,
    this.storageManagementType,
    this.storageSizeGb,
    this.systemVersion,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'compartmentId': ?compartmentId,
      'cpuCoreCount': cpuCoreCount,
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'dbNodeStorageSizeGb': ?dbNodeStorageSizeGb,
      'dbServerOcids': ?dbServerOcids,
      'diagnosticsDataCollectionOptions': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterPropertiesDiagnosticsDataCollectionOptions, Map<String, dynamic>>(diagnosticsDataCollectionOptions, (value) => value.toMap()),
      'diskRedundancy': ?diskRedundancy,
      'dnsListenerIp': ?dnsListenerIp,
      'domain': ?domain,
      'giVersion': ?giVersion,
      'hostname': ?hostname,
      'hostnamePrefix': ?hostnamePrefix,
      'licenseType': licenseType,
      'localBackupEnabled': ?localBackupEnabled,
      'memorySizeGb': ?memorySizeGb,
      'nodeCount': ?nodeCount,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'ocpuCount': ?ocpuCount,
      'scanDns': ?scanDns,
      'scanDnsRecordId': ?scanDnsRecordId,
      'scanIpIds': ?scanIpIds,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'scanListenerPortTcpSsl': ?scanListenerPortTcpSsl,
      'shape': ?shape,
      'sparseDiskgroupEnabled': ?sparseDiskgroupEnabled,
      'sshPublicKeys': ?sshPublicKeys,
      'state': ?state,
      'storageManagementType': ?storageManagementType,
      'storageSizeGb': ?storageSizeGb,
      'systemVersion': ?systemVersion,
      'timeZone': ?pulumi.Input.mapOptionalInputValue<CloudVmClusterPropertiesTimeZone, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
    };
  }

  factory CloudVmClusterProperties.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterProperties(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compartmentId: (() { final guardedValue = map['compartmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: pulumi.Input.fromValue(map['cpuCoreCount'] as int),
      dataStorageSizeTb: (() { final guardedValue = map['dataStorageSizeTb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dbNodeStorageSizeGb: (() { final guardedValue = map['dbNodeStorageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbServerOcids: (() { final guardedValue = map['dbServerOcids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      diagnosticsDataCollectionOptions: (() { final guardedValue = map['diagnosticsDataCollectionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterPropertiesDiagnosticsDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      diskRedundancy: (() { final guardedValue = map['diskRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsListenerIp: (() { final guardedValue = map['dnsListenerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      giVersion: (() { final guardedValue = map['giVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnamePrefix: (() { final guardedValue = map['hostnamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      licenseType: pulumi.Input.fromValue(map['licenseType'] as String),
      localBackupEnabled: (() { final guardedValue = map['localBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      memorySizeGb: (() { final guardedValue = map['memorySizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocpuCount: (() { final guardedValue = map['ocpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      scanDns: (() { final guardedValue = map['scanDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanDnsRecordId: (() { final guardedValue = map['scanDnsRecordId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanIpIds: (() { final guardedValue = map['scanIpIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scanListenerPortTcp: (() { final guardedValue = map['scanListenerPortTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scanListenerPortTcpSsl: (() { final guardedValue = map['scanListenerPortTcpSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparseDiskgroupEnabled: (() { final guardedValue = map['sparseDiskgroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshPublicKeys: (() { final guardedValue = map['sshPublicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageManagementType: (() { final guardedValue = map['storageManagementType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSizeGb: (() { final guardedValue = map['storageSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      systemVersion: (() { final guardedValue = map['systemVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudVmClusterPropertiesTimeZone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
