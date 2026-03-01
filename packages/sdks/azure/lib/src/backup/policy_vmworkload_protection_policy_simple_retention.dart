// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMWorkloadProtectionPolicySimpleRetention {
  /// The count that is used to count retention duration with duration type `Days`. Possible values are between `7` and `35`.
  final int count;

  /// Creates a new [PolicyVMWorkloadProtectionPolicySimpleRetention].
  /// [count] The count that is used to count retention duration with duration type `Days`. Possible values are between `7` and `35`.
  PolicyVMWorkloadProtectionPolicySimpleRetention({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory PolicyVMWorkloadProtectionPolicySimpleRetention.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicySimpleRetention(
      count: map['count'] as int,
    );
  }
}

