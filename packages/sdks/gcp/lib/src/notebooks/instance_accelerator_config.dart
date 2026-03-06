// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAcceleratorConfig {
  /// Count of cores of this accelerator.
  final pulumi.Input<int> coreCount;
  /// Type of this accelerator.
  /// Possible values are: `ACCELERATOR_TYPE_UNSPECIFIED`, `NVIDIA_TESLA_K80`, `NVIDIA_TESLA_P100`, `NVIDIA_TESLA_V100`, `NVIDIA_TESLA_P4`, `NVIDIA_TESLA_T4`, `NVIDIA_TESLA_T4_VWS`, `NVIDIA_TESLA_P100_VWS`, `NVIDIA_TESLA_P4_VWS`, `NVIDIA_TESLA_A100`, `TPU_V2`, `TPU_V3`.
  final pulumi.Input<String> type;

  /// Creates a new [InstanceAcceleratorConfig].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Type of this accelerator.
  const InstanceAcceleratorConfig({
    required this.coreCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': coreCount,
      'type': type,
    };
  }

  factory InstanceAcceleratorConfig.fromMap(Map<String, dynamic> map) {
    return InstanceAcceleratorConfig(
      coreCount: pulumi.Input.fromValue(map['coreCount'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

