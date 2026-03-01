// ignore_for_file: unused_element, unnecessary_cast


class PolicyVMWorkloadProtectionPolicyRetentionDaily {
  /// The number of daily backups to keep. Possible values are between `7` and `9999`.
  final int count;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyRetentionDaily].
  /// [count] The number of daily backups to keep. Possible values are between `7` and `9999`.
  PolicyVMWorkloadProtectionPolicyRetentionDaily({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyRetentionDaily.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicyRetentionDaily(
      count: map['count'] as int,
    );
  }
}

