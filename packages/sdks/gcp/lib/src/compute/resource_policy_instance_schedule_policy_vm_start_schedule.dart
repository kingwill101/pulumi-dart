// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyInstanceSchedulePolicyVmStartSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyVmStartSchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  const ResourcePolicyInstanceSchedulePolicyVmStartSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyVmStartSchedule(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}
