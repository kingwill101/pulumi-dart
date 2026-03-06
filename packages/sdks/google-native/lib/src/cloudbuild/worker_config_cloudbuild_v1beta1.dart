// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the configuration to be used for creating workers in the pool.
class WorkerConfigCloudbuildV1beta1 {
  /// Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  final pulumi.Input<String>? diskSizeGb;
  /// Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`.
  final pulumi.Input<String>? machineType;
  /// If true, workers are created without any public address, which prevents network egress to public IPs.
  final pulumi.Input<bool>? noExternalIp;

  /// Creates a new [WorkerConfigCloudbuildV1beta1].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  /// [machineType] Machine type of a worker, such as `n1-standard-1`. See [Worker pool config file](https://cloud.google.com/cloud-build/docs/custom-workers/worker-pool-config-file). If left blank, Cloud Build will use `n1-standard-1`.
  /// [noExternalIp] If true, workers are created without any public address, which prevents network egress to public IPs.
  const WorkerConfigCloudbuildV1beta1({
    this.diskSizeGb,
    this.machineType,
    this.noExternalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'machineType': ?machineType,
      'noExternalIp': ?noExternalIp,
    };
  }

  factory WorkerConfigCloudbuildV1beta1.fromMap(Map<String, dynamic> map) {
    return WorkerConfigCloudbuildV1beta1(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noExternalIp: (() { final guardedValue = map['noExternalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

