// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CompositeGangSchedulingPolicy indicates that the groups belonging to the composite group should be scheduled using all-or-nothing semantics.
class CompositeGangSchedulingPolicy {
  /// minGroupCount is the minimum number of child groups that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final pulumi.Input<int> minGroupCount;

  /// Creates a new [CompositeGangSchedulingPolicy].
  /// [minGroupCount] minGroupCount is the minimum number of child groups that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  const CompositeGangSchedulingPolicy({
    required this.minGroupCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minGroupCount': minGroupCount,
    };
  }

  factory CompositeGangSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return CompositeGangSchedulingPolicy(
      minGroupCount: pulumi.Input.fromValue((map['minGroupCount'] as num).toInt()),
    );
  }
}
