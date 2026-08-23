// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_preemptible_worker_config_instance_flexibility_policy_instance_selection_list_disk_config_attached_disk_config.dart';

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig {
  /// Optional. Attached disk configuration.
  final pulumi.Input<List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig>>? attachedDiskConfigs;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int>? bootDiskProvisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int>? bootDiskProvisionedThroughput;
  /// Size of the primary disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final pulumi.Input<int>? bootDiskSizeGb;
  /// The disk type of the primary disk attached to each node. Such as "pd-ssd" or "pd-standard".
  final pulumi.Input<String>? bootDiskType;
  /// Interface type of local SSDs (no Local SSDs or NVMe). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  final pulumi.Input<String>? localSsdInterface;
  /// The amount of local SSD disks that will be attached to each cluster node. Defaults to 0.
  final pulumi.Input<int>? numLocalSsds;

  /// Creates a new [ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig].
  /// [attachedDiskConfigs] Optional. Attached disk configuration.
  /// [bootDiskProvisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [bootDiskProvisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [bootDiskSizeGb] Size of the primary disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  /// [bootDiskType] The disk type of the primary disk attached to each node. Such as "pd-ssd" or "pd-standard".
  /// [localSsdInterface] Interface type of local SSDs (no Local SSDs or NVMe). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  /// [numLocalSsds] The amount of local SSD disks that will be attached to each cluster node. Defaults to 0.
  const ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig({
    this.attachedDiskConfigs,
    this.bootDiskProvisionedIops,
    this.bootDiskProvisionedThroughput,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedDiskConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig>, List<Map<String, dynamic>>>(attachedDiskConfigs, (value) => pulumi.Input.encodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskProvisionedIops': ?bootDiskProvisionedIops,
      'bootDiskProvisionedThroughput': ?bootDiskProvisionedThroughput,
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
      'localSsdInterface': ?localSsdInterface,
      'numLocalSsds': ?numLocalSsds,
    };
  }

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfig(
      attachedDiskConfigs: (() { final guardedValue = map['attachedDiskConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig>(guardedValue, (value) => ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDiskProvisionedIops: (() { final guardedValue = map['bootDiskProvisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bootDiskProvisionedThroughput: (() { final guardedValue = map['bootDiskProvisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bootDiskType: (() { final guardedValue = map['bootDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsdInterface: (() { final guardedValue = map['localSsdInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numLocalSsds: (() { final guardedValue = map['numLocalSsds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
