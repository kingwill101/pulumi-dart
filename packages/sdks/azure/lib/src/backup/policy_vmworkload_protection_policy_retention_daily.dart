// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadProtectionPolicyRetentionDaily {
  /// The number of daily backups to keep. Possible values are between `7` and `9999`.
  final pulumi.Input<int> count;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyRetentionDaily].
  /// [count] The number of daily backups to keep. Possible values are between `7` and `9999`.
  const PolicyVMWorkloadProtectionPolicyRetentionDaily({
    required this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyRetentionDaily.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicyRetentionDaily(
      count: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['count'])),
    );
  }
}
