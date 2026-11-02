// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_concurrency.dart';
import 'workflow_default_retention.dart';
import 'workflow_limits.dart';
import 'workflow_schedule.dart';

/// {@template pulumi_index_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_index_workflow_workflow_args_doc}
class WorkflowArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> className;
  final pulumi.Input<WorkflowConcurrency?>? concurrency;
  /// Default retention applied to instances of this version when they do not set their own retention.
  final pulumi.Input<WorkflowDefaultRetention?>? defaultRetention;
  final pulumi.Input<WorkflowLimits?>? limits;
  final pulumi.Input<List<WorkflowSchedule>?>? schedules;
  final pulumi.Input<String> scriptName;
  final pulumi.Input<String> workflowName;

  /// Creates a new [WorkflowArgs].
  /// [accountId] Required.
  /// [className] Required.
  /// [concurrency] Optional.
  /// [defaultRetention] Default retention applied to instances of this version when they do not set their own retention.
  /// [limits] Optional.
  /// [schedules] Optional.
  /// [scriptName] Required.
  /// [workflowName] Required.
  const WorkflowArgs({
    required this.accountId,
    required this.className,
    this.concurrency,
    this.defaultRetention,
    this.limits,
    this.schedules,
    required this.scriptName,
    required this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'className': className,
      'concurrency': ?pulumi.Input.mapOptionalInputValue<WorkflowConcurrency, Map<String, dynamic>>(concurrency, (value) => value.toMap()),
      'defaultRetention': ?pulumi.Input.mapOptionalInputValue<WorkflowDefaultRetention, Map<String, dynamic>>(defaultRetention, (value) => value.toMap()),
      'limits': ?pulumi.Input.mapOptionalInputValue<WorkflowLimits, Map<String, dynamic>>(limits, (value) => value.toMap()),
      'schedules': ?pulumi.Input.mapOptionalInputValue<List<WorkflowSchedule>, List<Map<String, dynamic>>>(schedules, (value) => pulumi.Input.encodeList<WorkflowSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scriptName': scriptName,
      'workflowName': workflowName,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      className: pulumi.Input.fromValue(map['className'] as String),
      concurrency: (() { final guardedValue = map['concurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowConcurrency.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultRetention: (() { final guardedValue = map['defaultRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowDefaultRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowLimits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkflowSchedule>(guardedValue, (value) => WorkflowSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scriptName: pulumi.Input.fromValue(map['scriptName'] as String),
      workflowName: pulumi.Input.fromValue(map['workflowName'] as String),
    );
  }
}
