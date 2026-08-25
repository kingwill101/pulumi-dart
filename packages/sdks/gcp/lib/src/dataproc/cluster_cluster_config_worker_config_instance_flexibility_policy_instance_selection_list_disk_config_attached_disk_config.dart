// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig {
  /// Size of the attached disk, specified in GB.
  final pulumi.Input<int?>? diskSizeGb;
  /// The disk type of the attached disk. Such as "pd-ssd" or "pd-standard".
  final pulumi.Input<String?>? diskType;
  /// Indicates how many IOPS to provision for the disk.
  final pulumi.Input<int?>? provisionedIops;
  /// Indicates how much throughput to provision for the disk.
  final pulumi.Input<int?>? provisionedThroughput;

  /// Creates a new [ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig].
  /// [diskSizeGb] Size of the attached disk, specified in GB.
  /// [diskType] The disk type of the attached disk. Such as "pd-ssd" or "pd-standard".
  /// [provisionedIops] Indicates how many IOPS to provision for the disk.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk.
  const ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
    };
  }

  factory ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
