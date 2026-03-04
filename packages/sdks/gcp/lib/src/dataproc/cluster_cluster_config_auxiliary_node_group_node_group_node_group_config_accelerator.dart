// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator {
  /// The number of the accelerator cards of this type exposed to this instance. Often restricted to one of `1`, `2`, `4`, or `8`.
  ///
  ///
  /// - - -
  final pulumi.Input<int> acceleratorCount;

  /// The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  final pulumi.Input<String> acceleratorType;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance. Often restricted to one of `1`, `2`, `4`, or `8`.
  /// [acceleratorType] The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator(
      acceleratorCount: pulumi.Input.fromValue(map['acceleratorCount'] as int),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
    );
  }
}
