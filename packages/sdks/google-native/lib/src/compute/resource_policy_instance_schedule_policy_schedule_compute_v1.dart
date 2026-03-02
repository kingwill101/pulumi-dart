// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleComputeV1 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String>? schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleComputeV1].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyScheduleComputeV1({
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleComputeV1(
      schedule: map['schedule'] == null ? null : (map['schedule']! as String).input(),
    );
  }
}

