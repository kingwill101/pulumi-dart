// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GangSchedulingPolicy defines the parameters for gang scheduling.
class GangSchedulingPolicyPatchSchedulingK8sIoV1alpha2 {
  /// MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final pulumi.Input<int?>? minCount;

  /// Creates a new [GangSchedulingPolicyPatchSchedulingK8sIoV1alpha2].
  /// [minCount] MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  const GangSchedulingPolicyPatchSchedulingK8sIoV1alpha2({
    this.minCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCount': ?minCount,
    };
  }

  factory GangSchedulingPolicyPatchSchedulingK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return GangSchedulingPolicyPatchSchedulingK8sIoV1alpha2(
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
