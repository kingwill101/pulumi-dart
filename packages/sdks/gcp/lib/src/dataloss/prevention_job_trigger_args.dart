// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job.dart';
import 'prevention_job_trigger_trigger.dart';

/// {@template pulumi_dataloss_prevention_job_trigger_prevention_job_trigger_args_doc}
/// The set of arguments for PreventionJobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_job_trigger_prevention_job_trigger_args_doc}
class PreventionJobTriggerArgs {
  /// A description of the job trigger.
  final pulumi.Input<String>? description;
  /// User set display name of the job trigger.
  final pulumi.Input<String>? displayName;
  /// Controls what and how to inspect for findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJob>? inspectJob;
  /// The parent of the trigger, either in the format `projects/{{project}}`
  /// or `projects/{{project}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// Whether the trigger is currently active.
  /// Default value is `HEALTHY`.
  /// Possible values are: `PAUSED`, `HEALTHY`, `CANCELLED`.
  final pulumi.Input<String>? status;
  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+.
  /// The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? triggerId;
  /// What event needs to occur for a new job to be started.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerTrigger>> triggers;

  /// Creates a new [PreventionJobTriggerArgs].
  /// [description] A description of the job trigger.
  /// [displayName] User set display name of the job trigger.
  /// [inspectJob] Controls what and how to inspect for findings.
  /// [parent] The parent of the trigger, either in the format `projects/{{project}}`
  /// [status] Whether the trigger is currently active.
  /// [triggerId] The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// [triggers] What event needs to occur for a new job to be started.
  PreventionJobTriggerArgs({
    this.description,
    this.displayName,
    this.inspectJob,
    required this.parent,
    this.status,
    this.triggerId,
    required this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'inspectJob': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJob, Map<String, dynamic>>(inspectJob, (value) => value.toMap()),
      'parent': parent,
      'status': ?status,
      'triggerId': ?triggerId,
      'triggers': pulumi.Input.mapInputValue<List<PreventionJobTriggerTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<PreventionJobTriggerTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PreventionJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      inspectJob: map['inspectJob'] == null ? null : (PreventionJobTriggerInspectJob.fromMap((map['inspectJob'] as Map).cast<String, dynamic>())).input(),
      parent: (map['parent'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      triggerId: map['triggerId'] == null ? null : (map['triggerId'] as String).input(),
      triggers: (pulumi.Input.decodeList<PreventionJobTriggerTrigger>(map['triggers'], (value) => PreventionJobTriggerTrigger.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

