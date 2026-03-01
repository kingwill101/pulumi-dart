// ignore_for_file: unused_element, unnecessary_cast


/// GangSchedulingPolicy defines the parameters for gang scheduling.
class GangSchedulingPolicyPatch {
  /// MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  final int? minCount;

  /// Creates a new [GangSchedulingPolicyPatch].
  /// [minCount] MinCount is the minimum number of pods that must be schedulable or scheduled at the same time for the scheduler to admit the entire group. It must be a positive integer.
  GangSchedulingPolicyPatch({
    this.minCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minCount': ?minCount,
    };
  }

  factory GangSchedulingPolicyPatch.fromMap(Map<String, dynamic> map) {
    return GangSchedulingPolicyPatch(
      minCount: map['minCount'] == null ? null : map['minCount'] as int,
    );
  }
}

