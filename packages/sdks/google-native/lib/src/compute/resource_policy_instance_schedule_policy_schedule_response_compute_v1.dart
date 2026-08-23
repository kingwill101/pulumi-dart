// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1 {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  const ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeV1(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}
