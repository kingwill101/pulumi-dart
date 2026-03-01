// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job.dart';
import 'prevention_job_trigger_trigger.dart';

/// Input properties used for looking up and filtering PreventionJobTrigger resources.
class PreventionJobTriggerState {
  /// The creation timestamp of an inspectTemplate. Set by the server.
  final pulumi.Input<String>? createTime;
  /// A description of the job trigger.
  final pulumi.Input<String>? description;
  /// User set display name of the job trigger.
  final pulumi.Input<String>? displayName;
  /// Controls what and how to inspect for findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJob>? inspectJob;
  /// The timestamp of the last time this trigger executed.
  final pulumi.Input<String>? lastRunTime;
  /// The resource name of the job trigger. Set by the server.
  final pulumi.Input<String>? name;
  /// The parent of the trigger, either in the format `projects/{{project}}`
  /// or `projects/{{project}}/locations/{{location}}`
  final pulumi.Input<String>? parent;
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
  final pulumi.Input<List<PreventionJobTriggerTrigger>>? triggers;
  /// The last update timestamp of an inspectTemplate. Set by the server.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [PreventionJobTriggerState].
  /// [createTime] The creation timestamp of an inspectTemplate. Set by the server.
  /// [description] A description of the job trigger.
  /// [displayName] User set display name of the job trigger.
  /// [inspectJob] Controls what and how to inspect for findings.
  /// [lastRunTime] The timestamp of the last time this trigger executed.
  /// [name] The resource name of the job trigger. Set by the server.
  /// [parent] The parent of the trigger, either in the format `projects/{{project}}`
  /// [status] Whether the trigger is currently active.
  /// [triggerId] The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// [triggers] What event needs to occur for a new job to be started.
  /// [updateTime] The last update timestamp of an inspectTemplate. Set by the server.
  PreventionJobTriggerState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<PreventionJobTriggerInspectJob>? inspectJob,
    pulumi.Output<String>? lastRunTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? status,
    pulumi.Output<String>? triggerId,
    pulumi.Output<List<PreventionJobTriggerTrigger>>? triggers,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      inspectJob = pulumi.Input.asOptionalInput<PreventionJobTriggerInspectJob>(inspectJob),
      lastRunTime = pulumi.Input.asOptionalInput<String>(lastRunTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      status = pulumi.Input.asOptionalInput<String>(status),
      triggerId = pulumi.Input.asOptionalInput<String>(triggerId),
      triggers = pulumi.Input.asOptionalInput<List<PreventionJobTriggerTrigger>>(triggers),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'inspectJob': ?pulumi.Input.mapOptionalInputValue<PreventionJobTriggerInspectJob, Map<String, dynamic>>(inspectJob, (value) => value.toMap()),
      'lastRunTime': ?lastRunTime,
      'name': ?name,
      'parent': ?parent,
      'status': ?status,
      'triggerId': ?triggerId,
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<PreventionJobTriggerTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<PreventionJobTriggerTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory PreventionJobTriggerState.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      inspectJob: map['inspectJob'] == null ? null : pulumi.Output.create<PreventionJobTriggerInspectJob>(PreventionJobTriggerInspectJob.fromMap((map['inspectJob'] as Map).cast<String, dynamic>())),
      lastRunTime: map['lastRunTime'] == null ? null : pulumi.Output.create<String>(map['lastRunTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      triggerId: map['triggerId'] == null ? null : pulumi.Output.create<String>(map['triggerId'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<List<PreventionJobTriggerTrigger>>(pulumi.Input.decodeList<PreventionJobTriggerTrigger>(map['triggers'], (value) => PreventionJobTriggerTrigger.fromMap((value as Map).cast<String, dynamic>()))),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

