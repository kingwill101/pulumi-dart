// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus) to find a valid combination. TPUs are not supported.
class SchedulerAcceleratorConfigResponse {
  /// Count of cores of this accelerator.
  final pulumi.Input<String> coreCount;
  /// Type of this accelerator.
  final pulumi.Input<String> type;

  /// Creates a new [SchedulerAcceleratorConfigResponse].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  SchedulerAcceleratorConfigResponse({
    required this.coreCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': coreCount,
      'type': type,
    };
  }

  factory SchedulerAcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return SchedulerAcceleratorConfigResponse(
      coreCount: (map['coreCount'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

