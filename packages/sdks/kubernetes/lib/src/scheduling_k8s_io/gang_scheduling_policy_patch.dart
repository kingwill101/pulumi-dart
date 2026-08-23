// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GangSchedulingPolicy defines the parameters for gang scheduling.
class GangSchedulingPolicyPatch {
  /// MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final pulumi.Input<int>? minCount;

  /// Creates a new [GangSchedulingPolicyPatch].
  /// [minCount] MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  const GangSchedulingPolicyPatch({
    this.minCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCount': ?minCount,
    };
  }

  factory GangSchedulingPolicyPatch.fromMap(Map<String, dynamic> map) {
    return GangSchedulingPolicyPatch(
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
