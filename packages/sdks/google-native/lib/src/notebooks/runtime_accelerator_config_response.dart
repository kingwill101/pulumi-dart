// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of the types of hardware accelerators that can be used. See [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes). Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `nvidia-tesla-v100` * `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-a100`
class RuntimeAcceleratorConfigResponse {
  /// Count of cores of this accelerator.
  final pulumi.Input<String> coreCount;

  /// Accelerator model.
  final pulumi.Input<String> type;

  /// Creates a new [RuntimeAcceleratorConfigResponse].
  /// [coreCount] Count of cores of this accelerator.
  /// [type] Accelerator model.
  RuntimeAcceleratorConfigResponse({
    required this.coreCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'coreCount': coreCount, 'type': type};
  }

  factory RuntimeAcceleratorConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeAcceleratorConfigResponse(
      coreCount: pulumi.Input.fromValue(map['coreCount'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
