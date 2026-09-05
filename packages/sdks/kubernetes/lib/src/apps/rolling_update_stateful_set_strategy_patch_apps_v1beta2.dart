// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
class RollingUpdateStatefulSetStrategyPatchAppsV1beta2 {
  /// Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
  final pulumi.Input<int?>? partition;

  /// Creates a new [RollingUpdateStatefulSetStrategyPatchAppsV1beta2].
  /// [partition] Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
  const RollingUpdateStatefulSetStrategyPatchAppsV1beta2({
    this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partition': ?partition,
    };
  }

  factory RollingUpdateStatefulSetStrategyPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return RollingUpdateStatefulSetStrategyPatchAppsV1beta2(
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
