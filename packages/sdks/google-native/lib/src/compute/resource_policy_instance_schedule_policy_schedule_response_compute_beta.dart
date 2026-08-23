// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  const ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponseComputeBeta(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}
