// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GangSchedulingPolicy defines the parameters for gang scheduling.
class GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3 {
  /// minCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer. This field is mutable to support workload scaling.
  ///
  /// Note that the scheduler operates on an eventually consistent model. Updates to minCount may not be immediately reflected in scheduling decisions due to propagation delays. If minCount is updated while a scheduling cycle is in progress for that group, the new value may not take effect until the next cycle. Moreover, minCount is only enforced during scheduling, meaning that modifications to this field do not affect already-scheduled pods, applying only to those evaluated in future cycles.
  final pulumi.Input<int?>? minCount;

  /// Creates a new [GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3].
  /// [minCount] minCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer. This field is mutable to support workload scaling.
  const GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3({
    this.minCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCount': ?minCount,
    };
  }

  factory GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return GangSchedulingPolicyPatchSchedulingK8sIoV1alpha3(
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
