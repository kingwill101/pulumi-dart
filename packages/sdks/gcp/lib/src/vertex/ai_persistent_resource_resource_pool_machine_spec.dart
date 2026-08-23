// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceResourcePoolMachineSpec {
  /// The number of accelerators to attach to the machine.
  final pulumi.Input<int>? acceleratorCount;
  /// The type of accelerator(s) that may be attached to the machine.
  /// Possible values:
  /// NVIDIA_TESLA_K80
  /// NVIDIA_TESLA_P100
  /// NVIDIA_TESLA_V100
  /// NVIDIA_TESLA_P4
  /// NVIDIA_TESLA_T4
  /// NVIDIA_TESLA_A100
  /// NVIDIA_A100_80GB
  /// NVIDIA_L4
  /// NVIDIA_H100_80GB
  /// NVIDIA_H100_MEGA_80GB
  /// NVIDIA_H200_141GB
  /// NVIDIA_B200
  /// NVIDIA_GB200
  /// NVIDIA_RTX_PRO_6000
  /// TPU_V2
  /// TPU_V3
  /// TPU_V4_POD
  /// TPU_V5_LITEPOD
  final pulumi.Input<String>? acceleratorType;
  /// The type of the machine.
  /// See the [list of machine types supported for
  /// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
  /// See the [list of machine types supported for custom
  /// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
  final pulumi.Input<String>? machineType;

  /// Creates a new [AiPersistentResourceResourcePoolMachineSpec].
  /// [acceleratorCount] The number of accelerators to attach to the machine.
  /// [acceleratorType] The type of accelerator(s) that may be attached to the machine.
  /// [machineType] The type of the machine.
  const AiPersistentResourceResourcePoolMachineSpec({
    this.acceleratorCount,
    this.acceleratorType,
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount,
      'acceleratorType': ?acceleratorType,
      'machineType': ?machineType,
    };
  }

  factory AiPersistentResourceResourcePoolMachineSpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourcePoolMachineSpec(
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      acceleratorType: (() { final guardedValue = map['acceleratorType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
