// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_accelerator_config_type.dart';

/// Definition of the types of hardware accelerators that can be used. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-a100`
class RuntimeAcceleratorConfig {
  /// Count of cores of this accelerator.
  final pulumi.Input<String>? coreCount;
  /// Accelerator model.
  final pulumi.Input<RuntimeAcceleratorConfigType>? type;

  /// Creates a new [RuntimeAcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Accelerator model.
  const RuntimeAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type': ?pulumi.Input.mapOptionalInputValue<RuntimeAcceleratorConfigType, String>(type, (value) => value.wireValue),
    };
  }

  factory RuntimeAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeAcceleratorConfig(
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeAcceleratorConfigType.fromValue(guardedValue as String)); })(),
    );
  }
}

