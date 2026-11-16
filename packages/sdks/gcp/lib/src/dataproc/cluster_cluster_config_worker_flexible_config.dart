// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigWorkerFlexibleConfig {
  /// The boot disk size in GB.
  /// Changing this forces a new resource to be created.
  /// - - -
  final pulumi.Input<int?>? bootDiskSizeGb;
  /// The number of vCPUs per instance. Must be a power of 2
  /// (2, 4, 8, 16, or 32). Changing this forces a new resource to be created.
  final pulumi.Input<int> coreCount;
  /// Controls the hardware class for the flexible instance group.
  /// Allowed values are `"STANDARD"` and `"PERFORMANCE"`. Defaults to `"STANDARD"`.
  /// Changing this forces a new resource to be created.
  final pulumi.Input<String?>? hardwareClass;
  /// Specifies the number of worker instances to create.
  /// Represents the desired capacity of the group and is updatable in place.
  final pulumi.Input<int> numInstances;

  /// Creates a new [ClusterClusterConfigWorkerFlexibleConfig].
  /// [bootDiskSizeGb] The boot disk size in GB.
  /// [coreCount] The number of vCPUs per instance. Must be a power of 2
  /// [hardwareClass] Controls the hardware class for the flexible instance group.
  /// [numInstances] Specifies the number of worker instances to create.
  const ClusterClusterConfigWorkerFlexibleConfig({
    this.bootDiskSizeGb,
    required this.coreCount,
    this.hardwareClass,
    required this.numInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'coreCount': coreCount,
      'hardwareClass': ?hardwareClass,
      'numInstances': numInstances,
    };
  }

  factory ClusterClusterConfigWorkerFlexibleConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigWorkerFlexibleConfig(
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      coreCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['coreCount'])),
      hardwareClass: (() { final guardedValue = map['hardwareClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numInstances: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['numInstances'])),
    );
  }
}
