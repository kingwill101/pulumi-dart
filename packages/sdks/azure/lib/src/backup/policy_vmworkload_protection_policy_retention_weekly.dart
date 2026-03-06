// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadProtectionPolicyRetentionWeekly {
  /// The number of weekly backups to keep. Possible values are between `1` and `5163`.
  final pulumi.Input<int> count;
  /// The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  final pulumi.Input<List<String>> weekdays;

  /// Creates a new [PolicyVMWorkloadProtectionPolicyRetentionWeekly].
  /// [count] The number of weekly backups to keep. Possible values are between `1` and `5163`.
  /// [weekdays] The weekday backups to retain. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` or `Saturday`.
  const PolicyVMWorkloadProtectionPolicyRetentionWeekly({
    required this.count,
    required this.weekdays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': count,
      'weekdays': weekdays,
    };
  }

  factory PolicyVMWorkloadProtectionPolicyRetentionWeekly.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicyRetentionWeekly(
      count: pulumi.Input.fromValue(map['count'] as int),
      weekdays: pulumi.Input.fromValue((map['weekdays'] as List).cast<String>()),
    );
  }
}

