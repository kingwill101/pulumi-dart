// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule for an instance operation.
class ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta {
  /// Specifies the frequency for the operation, using the unix-cron format.
  final pulumi.Input<String>? schedule;

  /// Creates a new [ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta].
  /// [schedule] Specifies the frequency for the operation, using the unix-cron format.
  ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta({
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?schedule,
    };
  }

  factory ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyInstanceSchedulePolicyScheduleComputeBeta(
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

