// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workers_cron_trigger_schedule.dart';

/// {@template pulumi_index_workers_cron_trigger_workers_cron_trigger_args_doc}
/// The set of arguments for WorkersCronTrigger.
/// {@endtemplate}
/// {@macro pulumi_index_workers_cron_trigger_workers_cron_trigger_args_doc}
class WorkersCronTriggerArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<WorkersCronTriggerSchedule>> schedules;
  /// Name of the script, used in URLs and route configuration.
  final pulumi.Input<String> scriptName;

  /// Creates a new [WorkersCronTriggerArgs].
  /// [accountId] Identifier.
  /// [schedules] Required.
  /// [scriptName] Name of the script, used in URLs and route configuration.
  const WorkersCronTriggerArgs({
    required this.accountId,
    required this.schedules,
    required this.scriptName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'schedules': pulumi.Input.mapInputValue<List<WorkersCronTriggerSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<WorkersCronTriggerSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': scriptName,
    };
  }

  factory WorkersCronTriggerArgs.fromMap(Map<String, dynamic> map) {
    return WorkersCronTriggerArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      schedules: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkersCronTriggerSchedule>(map['schedules']!, (value) => WorkersCronTriggerSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
    );
  }
}
