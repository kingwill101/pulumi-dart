// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigWorkerConfigDiskConfig {
  /// Size of the primary disk attached to each worker node, specified
  /// in GB. The smallest allowed disk size is 10GB. GCP will default to a predetermined
  /// computed value if not set (currently 500GB). Note: If SSDs are not
  /// attached, it also contains the HDFS data blocks and Hadoop working directories.
  final pulumi.Input<int>? bootDiskSizeGb;
  /// The disk type of the primary disk attached to each node.
  /// One of `"pd-ssd"` or `"pd-standard"`. Defaults to `"pd-standard"`.
  final pulumi.Input<String>? bootDiskType;
  /// Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  final pulumi.Input<String>? localSsdInterface;
  /// The amount of local SSD disks that will be
  /// attached to each worker cluster node. Defaults to 0.
  final pulumi.Input<int>? numLocalSsds;

  /// Creates a new [ClusterClusterConfigWorkerConfigDiskConfig].
  /// [bootDiskSizeGb] Size of the primary disk attached to each worker node, specified
  /// [bootDiskType] The disk type of the primary disk attached to each node.
  /// [localSsdInterface] Interface type of local SSDs (default is "scsi"). Valid values: "scsi" (Small Computer System Interface), "nvme" (Non-Volatile Memory Express).
  /// [numLocalSsds] The amount of local SSD disks that will be
  ClusterClusterConfigWorkerConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.localSsdInterface,
    this.numLocalSsds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
      'localSsdInterface': ?localSsdInterface,
      'numLocalSsds': ?numLocalSsds,
    };
  }

  factory ClusterClusterConfigWorkerConfigDiskConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfigDiskConfig(
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : (map['bootDiskSizeGb'] as int).input(),
      bootDiskType: map['bootDiskType'] == null ? null : (map['bootDiskType'] as String).input(),
      localSsdInterface: map['localSsdInterface'] == null ? null : (map['localSsdInterface'] as String).input(),
      numLocalSsds: map['numLocalSsds'] == null ? null : (map['numLocalSsds'] as int).input(),
    );
  }
}

