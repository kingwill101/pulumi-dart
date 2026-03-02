// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_accelerator_config_type.dart';

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus) to find a valid combination. TPUs are not supported.
class SchedulerAcceleratorConfig {
  /// Count of cores of this accelerator.
  final pulumi.Input<String>? coreCount;
  /// Type of this accelerator.
  final pulumi.Input<SchedulerAcceleratorConfigType>? type;

  /// Creates a new [SchedulerAcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  SchedulerAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type': ?pulumi.Input.mapOptionalInputValue<SchedulerAcceleratorConfigType, String>(type, (value) => value.value),
    };
  }

  factory SchedulerAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return SchedulerAcceleratorConfig(
      coreCount: map['coreCount'] == null ? null : (map['coreCount']! as String).input(),
      type: map['type'] == null ? null : (SchedulerAcceleratorConfigType.fromValue(map['type']! as String)).input(),
    );
  }
}

