// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta {
  /// The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  final pulumi.Input<String> lastRunStartTime;

  /// The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  final pulumi.Input<String> nextRunStartTime;

  /// Creates a new [ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta].
  /// [lastRunStartTime] The last time the schedule successfully ran. The timestamp is an RFC3339 string.
  /// [nextRunStartTime] The next time the schedule is planned to run. The actual time might be slightly different. The timestamp is an RFC3339 string.
  ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta({
    required this.lastRunStartTime,
    required this.nextRunStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunStartTime': lastRunStartTime,
      'nextRunStartTime': nextRunStartTime,
    };
  }

  factory ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyResourceStatusInstanceSchedulePolicyStatusResponseComputeBeta(
      lastRunStartTime: pulumi.Input.fromValue(
        map['lastRunStartTime'] as String,
      ),
      nextRunStartTime: pulumi.Input.fromValue(
        map['nextRunStartTime'] as String,
      ),
    );
  }
}
