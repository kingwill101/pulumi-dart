// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CompositeGangSchedulingPolicy indicates that the groups belonging to the composite group should be scheduled using all-or-nothing semantics.
class CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1 {
  /// minGroupCount is the minimum number of child groups that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final pulumi.Input<int?>? minGroupCount;

  /// Creates a new [CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1].
  /// [minGroupCount] minGroupCount is the minimum number of child groups that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  const CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1({
    this.minGroupCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGroupCount': ?minGroupCount,
    };
  }

  factory CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CompositeGangSchedulingPolicyPatchSchedulingK8sIoV1beta1(
      minGroupCount: (() { final guardedValue = map['minGroupCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
