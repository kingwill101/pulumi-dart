// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig {
  /// Size of the attached disk, specified in GB.
  final pulumi.Input<int?>? diskSizeGb;
  /// (Optional, Deprecated)
  /// The disk type of the attached disk. Currently only supports Hyperdisks: `hyperdisk-balanced`, `hyperdisk-extreme`, `hyperdisk-ml`, `hyperdisk-throughput`. `diskType` is deprecated and will be removed in a future major release. Use `type` instead.
  final pulumi.Input<String?>? diskType;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int?>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int?>? provisionedThroughput;
  /// Attached disk type. Currently only supports Hyperdisks: `hyperdisk-balanced`, `hyperdisk-extreme`, `hyperdisk-ml`, `hyperdisk-throughput`.
  final pulumi.Input<String?>? type;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig].
  /// [diskSizeGb] Size of the attached disk, specified in GB.
  /// [diskType] (Optional, Deprecated)
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [type] Attached disk type. Currently only supports Hyperdisks: `hyperdisk-balanced`, `hyperdisk-extreme`, `hyperdisk-ml`, `hyperdisk-throughput`.
  const WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig({
    this.diskSizeGb,
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?diskType,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'type': ?type,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigMasterConfigDiskConfigAttachedDiskConfig(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
