// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyInstanceSchedulePolicyVmStopSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyVmStopSchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyVmStopSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyVmStopSchedule(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}

