// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerCronTriggerSchedule {
  final pulumi.Input<String?>? createdOn;
  final pulumi.Input<String> cron;
  final pulumi.Input<String?>? modifiedOn;

  /// Creates a new [WorkerCronTriggerSchedule].
  /// [createdOn] Optional.
  /// [cron] Required.
  /// [modifiedOn] Optional.
  const WorkerCronTriggerSchedule({
    this.createdOn,
    required this.cron,
    this.modifiedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdOn': ?createdOn,
      'cron': cron,
      'modifiedOn': ?modifiedOn,
    };
  }

  factory WorkerCronTriggerSchedule.fromMap(Map<String, dynamic> map) {
    return WorkerCronTriggerSchedule(
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cron: pulumi.Input.fromValue(map['cron'] as String),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
