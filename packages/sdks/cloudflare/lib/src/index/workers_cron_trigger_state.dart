// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_cron_trigger_schedule.dart';

/// Input properties used for looking up and filtering WorkersCronTrigger resources.
class WorkersCronTriggerState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<WorkersCronTriggerSchedule>?>? schedules;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String?>? scriptName;

  /// Creates a new [WorkersCronTriggerState].
  /// [accountId] Identifier.
  /// [schedules] Optional.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const WorkersCronTriggerState({
    this.accountId,
    this.schedules,
    this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<WorkersCronTriggerSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<WorkersCronTriggerSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': ?scriptName,
    };
  }

  factory WorkersCronTriggerState.fromMap(Map<String, dynamic> map) {
    return WorkersCronTriggerState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersCronTriggerSchedule>(guardedValue, (value) => WorkersCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scriptName: (() { final guardedValue = map['scriptName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
