// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CompositeGangSchedulingPolicy indicates that the groups belonging to the composite group should be scheduled using all-or-nothing semantics.
class CompositeGangSchedulingPolicySchedulingK8sIoV1beta1 {
  /// minGroupCount is the minimum number of child groups that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final pulumi.Input<int> minGroupCount;

  /// Creates a new [CompositeGangSchedulingPolicySchedulingK8sIoV1beta1].
  /// [minGroupCount] minGroupCount is the minimum number of child groups that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  const CompositeGangSchedulingPolicySchedulingK8sIoV1beta1({
    required this.minGroupCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGroupCount': minGroupCount,
    };
  }

  factory CompositeGangSchedulingPolicySchedulingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CompositeGangSchedulingPolicySchedulingK8sIoV1beta1(
      minGroupCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minGroupCount'])),
    );
  }
}
