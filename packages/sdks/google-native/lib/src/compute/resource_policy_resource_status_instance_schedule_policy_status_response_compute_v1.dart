// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1 {
  /// The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  final pulumi.Input<String> lastRunStartTime;
  /// The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  final pulumi.Input<String> nextRunStartTime;

  /// Creates a new [ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1].
  /// [lastRunStartTime] The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  /// [nextRunStartTime] The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  const ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1({
    required this.lastRunStartTime,
    required this.nextRunStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunStartTime': lastRunStartTime,
      'nextRunStartTime': nextRunStartTime,
    };
  }

  factory ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeV1(
      lastRunStartTime: pulumi.Input.fromValue(map['lastRunStartTime'] as String),
      nextRunStartTime: pulumi.Input.fromValue(map['nextRunStartTime'] as String),
    );
  }
}

