// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_cron_trigger_schedule.dart';

/// {@template pulumi_index_worker_cron_trigger_worker_cron_trigger_args_doc}
/// The set of arguments for WorkerCronTrigger.
/// {@endtemplate}
/// {@macro pulumi_index_worker_cron_trigger_worker_cron_trigger_args_doc}
class WorkerCronTriggerArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<WorkerCronTriggerSchedule>> schedules;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;

  /// Creates a new [WorkerCronTriggerArgs].
  /// [accountId] Identifier.
  /// [schedules] Required.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const WorkerCronTriggerArgs({
    required this.accountId,
    required this.schedules,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'schedules': pulumi.Input.mapInputValue<List<WorkerCronTriggerSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<WorkerCronTriggerSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': scriptName,
    };
  }

  factory WorkerCronTriggerArgs.fromMap(Map<String, dynamic> map) {
    return WorkerCronTriggerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerCronTriggerSchedule>(map['schedules']!, (value) => WorkerCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}
