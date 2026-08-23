// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exadb_vm_cluster_properties_data_collection_options.dart';
import 'exadb_vm_cluster_properties_time_zone.dart';
import 'exadb_vm_cluster_properties_vm_file_system_storage.dart';

class ExadbVmClusterProperties {
  /// The number of additional ECPUs per node for an Exadata VM cluster on
  /// exascale infrastructure.
  final pulumi.Input<int>? additionalEcpuCountPerNode;
  /// The cluster name for Exascale vm cluster. The cluster name must begin with
  /// an alphabetic character and may contain hyphens(-) but can not contain
  /// underscores(_). It should be not more than 11 characters and is not case
  /// sensitive.
  /// OCI Cluster name.
  final pulumi.Input<String>? clusterName;
  /// Data collection options for diagnostics.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/DataCollectionOptions
  /// Structure is documented below.
  final pulumi.Input<ExadbVmClusterPropertiesDataCollectionOptions>? dataCollectionOptions;
  /// The number of ECPUs enabled per node for an exadata vm cluster on
  /// exascale infrastructure.
  final pulumi.Input<int> enabledEcpuCountPerNode;
  /// The name of ExascaleDbStorageVault associated with the ExadbVmCluster.
  /// It can refer to an existing ExascaleDbStorageVault. Or a new one can be
  /// created during the ExadbVmCluster creation (requires
  /// storageVaultProperties to be set).
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  final pulumi.Input<String> exascaleDbStorageVault;
  /// (Output)
  /// The Oracle Grid Infrastructure (GI) software version.
  final pulumi.Input<String>? giVersion;
  /// Grid Infrastructure Version.
  final pulumi.Input<String> gridImageId;
  /// (Output)
  /// The hostname of the ExadbVmCluster.
  final pulumi.Input<String>? hostname;
  /// Prefix for VM cluster host names.
  final pulumi.Input<String> hostnamePrefix;
  /// The license type of the ExadbVmCluster.
  /// Possible values:
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final pulumi.Input<String>? licenseModel;
  /// (Output)
  /// State of the cluster.
  /// Possible values:
  /// PROVISIONING
  /// AVAILABLE
  /// UPDATING
  /// TERMINATING
  /// TERMINATED
  /// FAILED
  /// MAINTENANCE_IN_PROGRESS
  final pulumi.Input<String>? lifecycleState;
  /// (Output)
  /// Memory per VM (GB) (Read-only): Shows the amount of memory allocated to
  /// each VM. Memory is calculated based on 2.75 GB per Total ECPUs.
  final pulumi.Input<int>? memorySizeGb;
  /// The number of nodes/VMs in the ExadbVmCluster.
  final pulumi.Input<int> nodeCount;
  /// (Output)
  /// Deep link to the OCI console to view this resource.
  final pulumi.Input<String>? ociUri;
  /// SCAN listener port - TCP
  final pulumi.Input<int>? scanListenerPortTcp;
  /// The shape attribute of the VM cluster. The type of Exascale storage used
  /// for Exadata VM cluster. The default is SMART_STORAGE which supports Oracle
  /// Database 23ai and later
  /// Possible values:
  /// SMART_STORAGE
  /// BLOCK_STORAGE
  final pulumi.Input<String> shapeAttribute;
  /// The SSH public keys for the ExadbVmCluster.
  final pulumi.Input<List<String>> sshPublicKeys;
  /// Represents a time zone from the
  /// [IANA Time Zone Database](https://www.iana.org/time-zones).
  /// Structure is documented below.
  final pulumi.Input<ExadbVmClusterPropertiesTimeZone>? timeZone;
  /// The storage allocation for the exadbvmcluster, in gigabytes (GB).
  /// Structure is documented below.
  final pulumi.Input<ExadbVmClusterPropertiesVmFileSystemStorage> vmFileSystemStorage;

  /// Creates a new [ExadbVmClusterProperties].
  /// [additionalEcpuCountPerNode] The number of additional ECPUs per node for an Exadata VM cluster on
  /// [clusterName] The cluster name for Exascale vm cluster. The cluster name must begin with
  /// [dataCollectionOptions] Data collection options for diagnostics.
  /// [enabledEcpuCountPerNode] The number of ECPUs enabled per node for an exadata vm cluster on
  /// [exascaleDbStorageVault] The name of ExascaleDbStorageVault associated with the ExadbVmCluster.
  /// [giVersion] (Output)
  /// [gridImageId] Grid Infrastructure Version.
  /// [hostname] (Output)
  /// [hostnamePrefix] Prefix for VM cluster host names.
  /// [licenseModel] The license type of the ExadbVmCluster.
  /// [lifecycleState] (Output)
  /// [memorySizeGb] (Output)
  /// [nodeCount] The number of nodes/VMs in the ExadbVmCluster.
  /// [ociUri] (Output)
  /// [scanListenerPortTcp] SCAN listener port - TCP
  /// [shapeAttribute] The shape attribute of the VM cluster. The type of Exascale storage used
  /// [sshPublicKeys] The SSH public keys for the ExadbVmCluster.
  /// [timeZone] Represents a time zone from the
  /// [vmFileSystemStorage] The storage allocation for the exadbvmcluster, in gigabytes (GB).
  const ExadbVmClusterProperties({
    this.additionalEcpuCountPerNode,
    this.clusterName,
    this.dataCollectionOptions,
    required this.enabledEcpuCountPerNode,
    required this.exascaleDbStorageVault,
    this.giVersion,
    required this.gridImageId,
    this.hostname,
    required this.hostnamePrefix,
    this.licenseModel,
    this.lifecycleState,
    this.memorySizeGb,
    required this.nodeCount,
    this.ociUri,
    this.scanListenerPortTcp,
    required this.shapeAttribute,
    required this.sshPublicKeys,
    this.timeZone,
    required this.vmFileSystemStorage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalEcpuCountPerNode': ?additionalEcpuCountPerNode,
      'clusterName': ?clusterName,
      'dataCollectionOptions': ?pulumi.Input.mapOptionalInputValue<ExadbVmClusterPropertiesDataCollectionOptions, Map<String, dynamic>>(dataCollectionOptions, (value) => value.toMap()),
      'enabledEcpuCountPerNode': enabledEcpuCountPerNode,
      'exascaleDbStorageVault': exascaleDbStorageVault,
      'giVersion': ?giVersion,
      'gridImageId': gridImageId,
      'hostname': ?hostname,
      'hostnamePrefix': hostnamePrefix,
      'licenseModel': ?licenseModel,
      'lifecycleState': ?lifecycleState,
      'memorySizeGb': ?memorySizeGb,
      'nodeCount': nodeCount,
      'ociUri': ?ociUri,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'shapeAttribute': shapeAttribute,
      'sshPublicKeys': sshPublicKeys,
      'timeZone': ?pulumi.Input.mapOptionalInputValue<ExadbVmClusterPropertiesTimeZone, Map<String, dynamic>>(timeZone, (value) => value.toMap()),
      'vmFileSystemStorage': pulumi.Input.mapInputValue<ExadbVmClusterPropertiesVmFileSystemStorage, Map<String, dynamic>>(vmFileSystemStorage, (value) => value.toMap()),
    };
  }

  factory ExadbVmClusterProperties.fromMap(Map<String, dynamic> map) {
    return ExadbVmClusterProperties(
      additionalEcpuCountPerNode: (() { final guardedValue = map['additionalEcpuCountPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCollectionOptions: (() { final guardedValue = map['dataCollectionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExadbVmClusterPropertiesDataCollectionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabledEcpuCountPerNode: pulumi.Input.fromValue(map['enabledEcpuCountPerNode'] as int),
      exascaleDbStorageVault: pulumi.Input.fromValue(map['exascaleDbStorageVault'] as String),
      giVersion: (() { final guardedValue = map['giVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gridImageId: pulumi.Input.fromValue(map['gridImageId'] as String),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnamePrefix: pulumi.Input.fromValue(map['hostnamePrefix'] as String),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleState: (() { final guardedValue = map['lifecycleState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memorySizeGb: (() { final guardedValue = map['memorySizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      ociUri: (() { final guardedValue = map['ociUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanListenerPortTcp: (() { final guardedValue = map['scanListenerPortTcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shapeAttribute: pulumi.Input.fromValue(map['shapeAttribute'] as String),
      sshPublicKeys: pulumi.Input.fromValue((map['sshPublicKeys'] as List).cast<String>()),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExadbVmClusterPropertiesTimeZone.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmFileSystemStorage: pulumi.Input.fromValue(ExadbVmClusterPropertiesVmFileSystemStorage.fromMap((map['vmFileSystemStorage']! as Map).cast<String, dynamic>())),
    );
  }
}
