// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job.dart';
import 'prevention_job_trigger_trigger.dart';

/// {@template pulumi_dataloss_prevention_job_trigger_prevention_job_trigger_args_doc}
/// The set of arguments for PreventionJobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_job_trigger_prevention_job_trigger_args_doc}
class PreventionJobTriggerArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A description of the job trigger.
  final pulumi.Input<String?>? description;
  /// User set display name of the job trigger.
  final pulumi.Input<String?>? displayName;
  /// Controls what and how to inspect for findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionJobTriggerInspectJob?>? inspectJob;
  /// The parent of the trigger, either in the format `projects/{{project}}`
  /// or `projects/{{project}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// Whether the trigger is currently active.
  /// Default value is `HEALTHY`.
  /// Possible values are: `PAUSED`, `HEALTHY`, `CANCELLED`.
  final pulumi.Input<String?>? status;
  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+.
  /// The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String?>? triggerId;
  /// What event needs to occur for a new job to be started.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionJobTriggerTrigger>> triggers;

  /// Creates a new [PreventionJobTriggerArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A description of the job trigger.
  /// [displayName] User set display name of the job trigger.
  /// [inspectJob] Controls what and how to inspect for findings.
  /// [parent] The parent of the trigger, either in the format `projects/{{project}}`
  /// [status] Whether the trigger is currently active.
  /// [triggerId] The trigger id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// [triggers] What event needs to occur for a new job to be started.
  const PreventionJobTriggerArgs({
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inspectJob: (() { final guardedValue = map['inspectJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionJobTriggerInspectJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionJobTriggerTrigger>(map['triggers']!, (value) => PreventionJobTriggerTrigger.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
