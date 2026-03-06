// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// WorkerConfig defines the configuration to be used for a creating workers in the pool.
class WorkerConfigResponseCloudbuildV1alpha2 {
  /// Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size.
  final pulumi.Input<String> diskSizeGb;
  /// Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool.
  final pulumi.Input<String> machineType;

  /// Creates a new [WorkerConfigResponseCloudbuildV1alpha2].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See https://cloud.google.com/compute/docs/disks/ If `0` is specified, Cloud Build will use a standard disk size.
  /// [machineType] Machine Type of the worker, such as n1-standard-1. See https://cloud.google.com/compute/docs/machine-types. If left blank, Cloud Build will use a standard unspecified machine to create the worker pool.
  const WorkerConfigResponseCloudbuildV1alpha2({
    required this.diskSizeGb,
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'machineType': machineType,
    };
  }

  factory WorkerConfigResponseCloudbuildV1alpha2.fromMap(Map<String, dynamic> map) {
    return WorkerConfigResponseCloudbuildV1alpha2(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
    );
  }
}

