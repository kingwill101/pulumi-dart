// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_worker_config_disk_config_attached_disk_config.dart';

class ClusterClusterConfigWorkerConfigDiskConfig {
  /// Attached disk configuration.
  final pulumi.Input<List<ClusterClusterConfigWorkerConfigDiskConfigAttachedDiskConfig>?>? attachedDiskConfigs;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int?>? bootDiskProvisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int?>? bootDiskProvisionedThroughput;
  /// Size of the primary disk attached to each worker node, specified
  /// in GB. The smallest allowed disk size is 10GB. GCP will default to a predetermined
  /// computed value if not set (currently 500GB). Note: If SSDs are not
  /// attached, it also contains the HDFS data blocks and Hadoop working directories.
  final pulumi.Input<int?>? bootDiskSizeGb;
  /// The disk type of the primary disk attached to each node.
  /// One of `"pd-ssd"` or `"pd-standard"`. Defaults to `"pd-standard"`.
  final pulumi.Input<String?>? bootDiskType;
  /// Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  final pulumi.Input<String?>? localSsdInterface;
  /// The amount of local SSD disks that will be
  /// attached to each worker cluster node. Defaults to 0.
  final pulumi.Input<int?>? numLocalSsds;

  /// Creates a new [ClusterClusterConfigWorkerConfigDiskConfig].
  /// [attachedDiskConfigs] Attached disk configuration.
  /// [bootDiskProvisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [bootDiskProvisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [bootDiskSizeGb] Size of the primary disk attached to each worker node, specified
  /// [bootDiskType] The disk type of the primary disk attached to each node.
  /// [localSsdInterface] Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  /// [numLocalSsds] The amount of local SSD disks that will be
  const ClusterClusterConfigWorkerConfigDiskConfig({
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
      'attachedDiskConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterConfigWorkerConfigDiskConfigAttachedDiskConfig>, List<Map<String, dynamic>>>(attachedDiskConfigs, (value) => pulumi.Input.encodeList<ClusterClusterConfigWorkerConfigDiskConfigAttachedDiskConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDiskProvisionedIops': ?bootDiskProvisionedIops,
      'bootDiskProvisionedThroughput': ?bootDiskProvisionedThroughput,
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
      'localSsdInterface': ?localSsdInterface,
      'numLocalSsds': ?numLocalSsds,
    };
  }

  factory ClusterClusterConfigWorkerConfigDiskConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfigDiskConfig(
      attachedDiskConfigs: (() { final guardedValue = map['attachedDiskConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterClusterConfigWorkerConfigDiskConfigAttachedDiskConfig>(guardedValue, (value) => ClusterClusterConfigWorkerConfigDiskConfigAttachedDiskConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bootDiskProvisionedIops: (() { final guardedValue = map['bootDiskProvisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      bootDiskProvisionedThroughput: (() { final guardedValue = map['bootDiskProvisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      bootDiskType: (() { final guardedValue = map['bootDiskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localSsdInterface: (() { final guardedValue = map['localSsdInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numLocalSsds: (() { final guardedValue = map['numLocalSsds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
