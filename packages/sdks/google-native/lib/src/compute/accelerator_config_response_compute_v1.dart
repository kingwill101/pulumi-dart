// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A specification of the type and number of accelerator cards attached to the instance.
class AcceleratorConfigResponseComputeV1 {
  /// The number of the guest accelerator cards exposed to this instance.
  final pulumi.Input<int> acceleratorCount;
  /// Full or partial URL of the accelerator type resource to attach to this instance. For example: projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100 If you are creating an instance template, specify only the accelerator name. See GPUs on Compute Engine for a full list of accelerator types.
  final pulumi.Input<String> acceleratorType;

  /// Creates a new [AcceleratorConfigResponseComputeV1].
  /// [acceleratorCount] The number of the guest accelerator cards exposed to this instance.
  /// [acceleratorType] Full or partial URL of the accelerator type resource to attach to this instance. For example: projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100 If you are creating an instance template, specify only the accelerator name. See GPUs on Compute Engine for a full list of accelerator types.
  AcceleratorConfigResponseComputeV1({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory AcceleratorConfigResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return AcceleratorConfigResponseComputeV1(
      acceleratorCount: (map['acceleratorCount'] as int).input(),
      acceleratorType: (map['acceleratorType'] as String).input(),
    );
  }
}

