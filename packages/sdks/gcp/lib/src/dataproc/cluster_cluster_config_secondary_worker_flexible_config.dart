// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigSecondaryWorkerFlexibleConfig {
  /// The boot disk size in GB. Changing this on an existing
  /// secondary worker group forces a new resource to be created.
  /// - - -
  final pulumi.Input<int?>? bootDiskSizeGb;
  /// The number of vCPUs per instance. Must be a power of 2
  /// (2, 4, 8, 16, or 32). Changing this on an existing secondary worker group forces a new resource to be created.
  final pulumi.Input<int> coreCount;
  /// Controls the hardware class for the flexible instance group.
  /// Allowed values are `"STANDARD"` and `"PERFORMANCE"`. Defaults to `"STANDARD"`.
  /// Changing this on an existing secondary worker group forces a new resource to be created.
  final pulumi.Input<String?>? hardwareClass;
  /// Specifies the number of secondary worker instances to create.
  /// Defaults to `0`; can be scaled down to `0`; updatable in place.
  final pulumi.Input<int?>? numInstances;

  /// Creates a new [ClusterClusterConfigSecondaryWorkerFlexibleConfig].
  /// [bootDiskSizeGb] The boot disk size in GB. Changing this on an existing
  /// [coreCount] The number of vCPUs per instance. Must be a power of 2
  /// [hardwareClass] Controls the hardware class for the flexible instance group.
  /// [numInstances] Specifies the number of secondary worker instances to create.
  const ClusterClusterConfigSecondaryWorkerFlexibleConfig({
    this.bootDiskSizeGb,
    required this.coreCount,
    this.hardwareClass,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'coreCount': coreCount,
      'hardwareClass': ?hardwareClass,
      'numInstances': ?numInstances,
    };
  }

  factory ClusterClusterConfigSecondaryWorkerFlexibleConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigSecondaryWorkerFlexibleConfig(
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      coreCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['coreCount'])),
      hardwareClass: (() { final guardedValue = map['hardwareClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numInstances: (() { final guardedValue = map['numInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
