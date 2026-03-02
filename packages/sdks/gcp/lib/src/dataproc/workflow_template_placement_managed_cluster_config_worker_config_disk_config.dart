// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig {
  /// Size in GB of the boot disk (default is 500GB).
  final pulumi.Input<int>? bootDiskSizeGb;
  /// Type of the boot disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final pulumi.Input<String>? bootDiskType;
  /// Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
  final pulumi.Input<int>? numLocalSsds;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 500GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  /// [numLocalSsds] Number of attached SSDs, from 0 to 4 (default is 0). If SSDs are not attached, the boot disk is used to store runtime logs and (https://hadoop.apache.org/docs/r1.2.1/hdfs_user_guide.html) data. If one or more SSDs are attached, this runtime bulk data is spread across them, and the boot disk contains only basic config and installed binaries.
  WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig({
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.numLocalSsds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
      'numLocalSsds': ?numLocalSsds,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigWorkerConfigDiskConfig(
      bootDiskSizeGb: map['bootDiskSizeGb'] == null ? null : (map['bootDiskSizeGb'] as int).input(),
      bootDiskType: map['bootDiskType'] == null ? null : (map['bootDiskType'] as String).input(),
      numLocalSsds: map['numLocalSsds'] == null ? null : (map['numLocalSsds'] as int).input(),
    );
  }
}

