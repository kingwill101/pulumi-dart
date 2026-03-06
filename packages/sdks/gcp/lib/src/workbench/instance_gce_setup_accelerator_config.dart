// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGceSetupAcceleratorConfig {
  /// Optional. Count of cores of this accelerator.
  final pulumi.Input<String>? coreCount;
  /// Optional. Type of this accelerator.
  /// Possible values are: `NVIDIA_TESLA_P100`, `NVIDIA_TESLA_V100`, `NVIDIA_TESLA_P4`, `NVIDIA_TESLA_T4`, `NVIDIA_TESLA_A100`, `NVIDIA_A100_80GB`, `NVIDIA_L4`, `NVIDIA_TESLA_T4_VWS`, `NVIDIA_TESLA_P100_VWS`, `NVIDIA_TESLA_P4_VWS`.
  final pulumi.Input<String>? type;

  /// Creates a new [InstanceGceSetupAcceleratorConfig].
  /// [coreCount] Optional. Count of cores of this accelerator.
  /// [type] Optional. Type of this accelerator.
  const InstanceGceSetupAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': ?coreCount,
      'type': ?type,
    };
  }

  factory InstanceGceSetupAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupAcceleratorConfig(
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

