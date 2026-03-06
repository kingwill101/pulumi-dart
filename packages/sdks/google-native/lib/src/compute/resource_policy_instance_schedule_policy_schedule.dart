// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicySchedule {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String>? schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicySchedule].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  const ResourcePolicyInstanceSchedulePolicySchedule({
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicySchedule.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicySchedule(
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

