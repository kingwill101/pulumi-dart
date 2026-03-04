// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleResponse {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleResponse].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyScheduleResponse({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'schedule': schedule};
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyInstanceSchedulePolicyScheduleResponse(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}
