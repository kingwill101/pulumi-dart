// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicyInstanceSchedulePolicyVmStopSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [GetResourcePolicyInstanceSchedulePolicyVmStopSchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  GetResourcePolicyInstanceSchedulePolicyVmStopSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory GetResourcePolicyInstanceSchedulePolicyVmStopSchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyInstanceSchedulePolicyVmStopSchedule(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}

