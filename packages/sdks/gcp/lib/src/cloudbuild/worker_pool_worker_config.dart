// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerPoolWorkerConfig {
  /// Size of the disk attached to the worker, in GB. See [diskSizeGb](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#disksizegb). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  final pulumi.Input<int?>? diskSizeGb;
  /// Enable nested virtualization on the worker, if supported by the machine type. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will set this to false.
  final pulumi.Input<bool?>? enableNestedVirtualization;
  /// Machine type of a worker, such as `n1-standard-1`. See [machineType](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#machinetype). If left blank, Cloud Build will use `n1-standard-1`.
  final pulumi.Input<String?>? machineType;
  /// If true, workers are created without any public address, which prevents network egress to public IPs.
  final pulumi.Input<bool?>? noExternalIp;

  /// Creates a new [WorkerPoolWorkerConfig].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See [diskSizeGb](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#disksizegb). Specify a value of up to 1000. If `0` is specified, Cloud Build will use a standard disk size.
  /// [enableNestedVirtualization] Enable nested virtualization on the worker, if supported by the machine type. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will set this to false.
  /// [machineType] Machine type of a worker, such as `n1-standard-1`. See [machineType](https://cloud.google.com/build/docs/private-pools/private-pool-config-file-schema#machinetype). If left blank, Cloud Build will use `n1-standard-1`.
  /// [noExternalIp] If true, workers are created without any public address, which prevents network egress to public IPs.
  const WorkerPoolWorkerConfig({
    this.diskSizeGb,
    this.enableNestedVirtualization,
    this.machineType,
    this.noExternalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'enableNestedVirtualization': ?enableNestedVirtualization,
      'machineType': ?machineType,
      'noExternalIp': ?noExternalIp,
    };
  }

  factory WorkerPoolWorkerConfig.fromMap(Map<String, dynamic> map) {
    return WorkerPoolWorkerConfig(
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enableNestedVirtualization: (() { final guardedValue = map['enableNestedVirtualization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noExternalIp: (() { final guardedValue = map['noExternalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
