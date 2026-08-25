// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_cluster_control_plane_database_encryption.dart';
import 'azure_cluster_control_plane_main_volume.dart';
import 'azure_cluster_control_plane_proxy_config.dart';
import 'azure_cluster_control_plane_replica_placement.dart';
import 'azure_cluster_control_plane_root_volume.dart';
import 'azure_cluster_control_plane_ssh_config.dart';

class AzureClusterControlPlane {
  /// Optional. Configuration related to application-layer secrets encryption.
  final pulumi.Input<AzureClusterControlPlaneDatabaseEncryption?>? databaseEncryption;
  /// Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. When unspecified, it defaults to a 8-GiB Azure Disk.
  final pulumi.Input<AzureClusterControlPlaneMainVolume?>? mainVolume;
  /// Proxy configuration for outbound HTTP(S) traffic.
  final pulumi.Input<AzureClusterControlPlaneProxyConfig?>? proxyConfig;
  /// Configuration for where to place the control plane replicas. Up to three replica placement instances can be specified. If replicaPlacements is set, the replica placement instances will be applied to the three control plane replicas as evenly as possible.
  final pulumi.Input<List<AzureClusterControlPlaneReplicaPlacement>?>? replicaPlacements;
  /// Optional. Configuration related to the root volume provisioned for each control plane replica. When unspecified, it defaults to 32-GiB Azure Disk.
  final pulumi.Input<AzureClusterControlPlaneRootVolume?>? rootVolume;
  /// SSH configuration for how to access the underlying control plane machines.
  final pulumi.Input<AzureClusterControlPlaneSshConfig> sshConfig;
  /// The ARM ID of the subnet where the control plane VMs are deployed. Example: `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`.
  final pulumi.Input<String> subnetId;
  /// Optional. A set of tags to apply to all underlying control plane Azure resources.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAzureServerConfig.
  final pulumi.Input<String> version;
  /// Optional. The Azure VM size name. Example: `Standard_DS2_v2`. For available VM sizes, see https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions. When unspecified, it defaults to `Standard_DS2_v2`.
  final pulumi.Input<String?>? vmSize;

  /// Creates a new [AzureClusterControlPlane].
  /// [databaseEncryption] Optional. Configuration related to application-layer secrets encryption.
  /// [mainVolume] Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster's etcd state. When unspecified, it defaults to a 8-GiB Azure Disk.
  /// [proxyConfig] Proxy configuration for outbound HTTP(S) traffic.
  /// [replicaPlacements] Configuration for where to place the control plane replicas. Up to three replica placement instances can be specified. If replicaPlacements is set, the replica placement instances will be applied to the three control plane replicas as evenly as possible.
  /// [rootVolume] Optional. Configuration related to the root volume provisioned for each control plane replica. When unspecified, it defaults to 32-GiB Azure Disk.
  /// [sshConfig] SSH configuration for how to access the underlying control plane machines.
  /// [subnetId] The ARM ID of the subnet where the control plane VMs are deployed. Example: `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`.
  /// [tags] Optional. A set of tags to apply to all underlying control plane Azure resources.
  /// [version] The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAzureServerConfig.
  /// [vmSize] Optional. The Azure VM size name. Example: `Standard_DS2_v2`. For available VM sizes, see https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions. When unspecified, it defaults to `Standard_DS2_v2`.
  const AzureClusterControlPlane({
    this.databaseEncryption,
    this.mainVolume,
    this.proxyConfig,
    this.replicaPlacements,
    this.rootVolume,
    required this.sshConfig,
    required this.subnetId,
    this.tags,
    required this.version,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseEncryption': ?pulumi.Input.mapOptionalInputValue<AzureClusterControlPlaneDatabaseEncryption, Map<String, dynamic>>(databaseEncryption, (value) => value.toMap()),
      'mainVolume': ?pulumi.Input.mapOptionalInputValue<AzureClusterControlPlaneMainVolume, Map<String, dynamic>>(mainVolume, (value) => value.toMap()),
      'proxyConfig': ?pulumi.Input.mapOptionalInputValue<AzureClusterControlPlaneProxyConfig, Map<String, dynamic>>(proxyConfig, (value) => value.toMap()),
      'replicaPlacements': ?pulumi.Input.mapOptionalInputValue<List<AzureClusterControlPlaneReplicaPlacement>, List<Map<String, dynamic>>>(replicaPlacements, (value) => pulumi.Input.encodeList<AzureClusterControlPlaneReplicaPlacement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rootVolume': ?pulumi.Input.mapOptionalInputValue<AzureClusterControlPlaneRootVolume, Map<String, dynamic>>(rootVolume, (value) => value.toMap()),
      'sshConfig': pulumi.Input.mapInputValue<AzureClusterControlPlaneSshConfig, Map<String, dynamic>>(sshConfig, (value) => value.toMap()),
      'subnetId': subnetId,
      'tags': ?tags,
      'version': version,
      'vmSize': ?vmSize,
    };
  }

  factory AzureClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return AzureClusterControlPlane(
      databaseEncryption: (() { final guardedValue = map['databaseEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureClusterControlPlaneDatabaseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mainVolume: (() { final guardedValue = map['mainVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureClusterControlPlaneMainVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyConfig: (() { final guardedValue = map['proxyConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureClusterControlPlaneProxyConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicaPlacements: (() { final guardedValue = map['replicaPlacements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureClusterControlPlaneReplicaPlacement>(guardedValue, (value) => AzureClusterControlPlaneReplicaPlacement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rootVolume: (() { final guardedValue = map['rootVolume']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureClusterControlPlaneRootVolume.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshConfig: pulumi.Input.fromValue(AzureClusterControlPlaneSshConfig.fromMap((map['sshConfig']! as Map).cast<String, dynamic>())),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
