// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourcePolicyInstanceSchedulePolicyVmStartSchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String> schedule;

  /// Creates a new [GetResourcePolicyInstanceSchedulePolicyVmStartSchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  const GetResourcePolicyInstanceSchedulePolicyVmStartSchedule({
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': schedule,
    };
  }

  factory GetResourcePolicyInstanceSchedulePolicyVmStartSchedule.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyInstanceSchedulePolicyVmStartSchedule(
      schedule: pulumi.Input.fromValue(map['schedule'] as String),
    );
  }
}

