// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_cron_trigger_schedule.dart';

/// Input properties used for looking up and filtering WorkerCronTrigger resources.
class WorkerCronTriggerState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<WorkerCronTriggerSchedule>?>? schedules;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String?>? scriptName;

  /// Creates a new [WorkerCronTriggerState].
  /// [accountId] Identifier.
  /// [schedules] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const WorkerCronTriggerState({
    this.accountId,
    this.schedules,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<WorkerCronTriggerSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<WorkerCronTriggerSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': ?scriptName,
    };
  }

  factory WorkerCronTriggerState.fromMap(Map<String, dynamic> map) {
    return WorkerCronTriggerState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerCronTriggerSchedule>(guardedValue, (value) => WorkerCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
