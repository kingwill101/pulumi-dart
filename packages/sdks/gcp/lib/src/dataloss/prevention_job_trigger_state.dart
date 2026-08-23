// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job.dart';
import 'prevention_job_trigger_trigger.dart';

/// Input properties used for looking up and filtering PreventionJobTrigger resources.
class PreventionJobTriggerState {
  /// The creation timestamp of an inspectTemplate. Set by the server.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const PreventionJobTriggerState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.inspectJob,
    this.lastRunTime,
    this.name,
    this.parent,
    this.status,
    this.triggerId,
    this.triggers,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inspectJob: (() { final guardedValue = map['inspectJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lastRunTime: (() { final guardedValue = map['lastRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerTrigger>(guardedValue, (value) => PreventionJobTriggerTrigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
