// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig {
  /// Size of the attached disk, specified in GB.
  final pulumi.Input<int>? diskSizeGb;
  /// The disk type of the attached disk. Such as "pd-ssd" or "pd-standard".
  final pulumi.Input<String>? diskType;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int>? provisionedThroughput;

  /// Creates a new [ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig].
  /// [diskSizeGb] Size of the attached disk, specified in GB.
  /// [diskType] The disk type of the attached disk. Such as "pd-ssd" or "pd-standard".
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  const ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig({
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

  factory ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigPreemptibleWorkerConfigInstanceFlexibilityPolicyInstanceSelectionListDiskConfigAttachedDiskConfig(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
