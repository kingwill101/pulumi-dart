// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the configuration to be used for creating workers in the pool.
class WorkerConfigResponse {
  /// Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). Specify a value of up to 2000. If `0` is specified, Cloud Build will use a standard disk size.
  final pulumi.Input<String> diskSizeGb;
  /// Machine type of a worker, such as `e2-medium`. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will use a sensible default.
  final pulumi.Input<String> machineType;

  /// Creates a new [WorkerConfigResponse].
  /// [diskSizeGb] Size of the disk attached to the worker, in GB. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). Specify a value of up to 2000. If `0` is specified, Cloud Build will use a standard disk size.
  /// [machineType] Machine type of a worker, such as `e2-medium`. See [Worker pool config file](https://cloud.google.com/build/docs/private-pools/worker-pool-config-file-schema). If left blank, Cloud Build will use a sensible default.
  WorkerConfigResponse({
    required this.diskSizeGb,
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': diskSizeGb,
      'machineType': machineType,
    };
  }

  factory WorkerConfigResponse.fromMap(Map<String, dynamic> map) {
    return WorkerConfigResponse(
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
    );
  }
}

