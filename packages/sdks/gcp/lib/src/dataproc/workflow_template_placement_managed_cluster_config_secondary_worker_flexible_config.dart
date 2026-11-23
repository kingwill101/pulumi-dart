// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerFlexibleConfig {
  /// Size of the boot disk in GB for each instance in the instance group.
  final pulumi.Input<int?>? bootDiskSizeGb;
  /// The core count for each instance in the instance group.
  final pulumi.Input<int?>? coreCount;
  /// The hardware class of instances in the instance group. Possible values: `HARDWARE_CLASS_UNSPECIFIED`, `STANDARD`, `PERFORMANCE`.
  final pulumi.Input<String?>? hardwareClass;
  /// Number of instances in the instance group.
  final pulumi.Input<int?>? numInstances;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerFlexibleConfig].
  /// [bootDiskSizeGb] Size of the boot disk in GB for each instance in the instance group.
  /// [coreCount] The core count for each instance in the instance group.
  /// [hardwareClass] The hardware class of instances in the instance group. Possible values: `HARDWARE_CLASS_UNSPECIFIED`, `STANDARD`, `PERFORMANCE`.
  /// [numInstances] Number of instances in the instance group.
  const WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerFlexibleConfig({
    this.bootDiskSizeGb,
    this.coreCount,
    this.hardwareClass,
    this.numInstances,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'coreCount': ?coreCount,
      'hardwareClass': ?hardwareClass,
      'numInstances': ?numInstances,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerFlexibleConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerFlexibleConfig(
      bootDiskSizeGb: (() { final guardedValue = map['bootDiskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      hardwareClass: (() { final guardedValue = map['hardwareClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numInstances: (() { final guardedValue = map['numInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
