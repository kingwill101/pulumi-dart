// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_type.dart';

/// Definition of a hardware accelerator. Note that not all combinations of `type` and `core_count` are valid. See [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list) to find a valid combination. TPUs are not supported.
class AcceleratorConfig {
  /// Count of cores of this accelerator.
  final pulumi.Input<String>? coreCount;

  /// Type of this accelerator.
  final pulumi.Input<AcceleratorConfigType>? type;

  /// Creates a new [AcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  AcceleratorConfig({this.coreCount, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type':
          ?pulumi.Input.mapOptionalInputValue<AcceleratorConfigType, String>(
            type,
            (value) => value.wireValue,
          ),
    };
  }

  factory AcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfig(
      coreCount: (() {
        final guardedValue = map['coreCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AcceleratorConfigType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
