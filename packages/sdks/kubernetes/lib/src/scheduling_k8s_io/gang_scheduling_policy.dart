// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GangSchedulingPolicy defines the parameters for gang scheduling.
class GangSchedulingPolicy {
  /// MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final pulumi.Input<int> minCount;

  /// Creates a new [GangSchedulingPolicy].
  /// [minCount] MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  GangSchedulingPolicy({required this.minCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'minCount': minCount};
  }

  factory GangSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return GangSchedulingPolicy(
      minCount: pulumi.Input.fromValue(map['minCount'] as int),
    );
  }
}
