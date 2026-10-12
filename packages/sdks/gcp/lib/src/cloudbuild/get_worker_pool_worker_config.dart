// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerPoolWorkerConfig {
  /// Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  final pulumi.Input<int> diskSizeGb;
  /// Enable nested virtualization on the worker, if supported by the machine type. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will set this to false.
  final pulumi.Input<bool> enableNestedVirtualization;
  /// Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`.
  final pulumi.Input<String> machineType;
  /// If true, workers are created without any public address, which prevents network egress to public IPs.
  final pulumi.Input<bool> noExternalIp;

  /// Creates a new [GetWorkerPoolWorkerConfig].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  /// [enableNestedVirtualization] Enable nested virtualization on the worker, if supported by the machine type. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will set this to false.
  /// [machineType] Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`.
  /// [noExternalIp] If true, workers are created without any public address, which prevents network egress to public IPs.
  const GetWorkerPoolWorkerConfig({
    required this.diskSizeGb,
    required this.enableNestedVirtualization,
    required this.machineType,
    required this.noExternalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'enableNestedVirtualization': enableNestedVirtualization,
      'machineType': machineType,
      'noExternalIp': noExternalIp,
    };
  }

  factory GetWorkerPoolWorkerConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolWorkerConfig(
      diskSizeGb: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['diskSizeGb'])),
      enableNestedVirtualization: pulumi.Input.fromValue(map['enableNestedVirtualization'] as bool),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      noExternalIp: pulumi.Input.fromValue(map['noExternalIp'] as bool),
    );
  }
}
