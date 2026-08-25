// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigMasterConfigAccelerator {
  /// The number of the accelerator cards of this type exposed to this instance. Often restricted to one of `1`, `2`, `4`, or `8`.
  ///
  /// &gt; The Cloud Dataproc API can return unintuitive error messages when using accelerators; even when you have defined an accelerator, Auto Zone Placement does not exclusively select
  /// zones that have that accelerator available. If you get a 400 error that the accelerator can't be found, this is a likely cause. Make sure you check [accelerator availability by zone](https://cloud.google.com/compute/docs/reference/rest/v1/acceleratorTypes/list)
  /// if you are trying to use accelerators in a given zone.
  ///
  /// - - -
  final pulumi.Input<int> acceleratorCount;
  /// The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  final pulumi.Input<String> acceleratorType;

  /// Creates a new [ClusterClusterConfigMasterConfigAccelerator].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance. Often restricted to one of `1`, `2`, `4`, or `8`.
  /// [acceleratorType] The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  const ClusterClusterConfigMasterConfigAccelerator({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': acceleratorCount,
      'acceleratorType': acceleratorType,
    };
  }

  factory ClusterClusterConfigMasterConfigAccelerator.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigMasterConfigAccelerator(
      acceleratorCount: pulumi.Input.fromValue((map['acceleratorCount'] as num).toInt()),
      acceleratorType: pulumi.Input.fromValue(map['acceleratorType'] as String),
    );
  }
}
