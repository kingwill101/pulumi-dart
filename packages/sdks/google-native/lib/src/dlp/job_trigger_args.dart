// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_trigger.dart';
import 'job_trigger_status.dart';

/// {@template pulumi_dlp_v2_job_trigger_args_doc}
/// The set of arguments for JobTrigger.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_job_trigger_args_doc}
class JobTriggerArgs {
  /// User provided description (max 256 chars)
  final pulumi.Input<String>? description;
  /// Display name (max 100 chars)
  final pulumi.Input<String>? displayName;
  /// For inspect jobs, a snapshot of the configuration.
  final pulumi.Input<GooglePrivacyDlpV2InspectJobConfig>? inspectJob;
  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A status for this trigger.
  final pulumi.Input<JobTriggerStatus> status;
  /// The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? triggerId;
  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  final pulumi.Input<List<GooglePrivacyDlpV2Trigger>>? triggers;

  /// Creates a new [JobTriggerArgs].
  /// [description] User provided description (max 256 chars)
  /// [displayName] Display name (max 100 chars)
  /// [inspectJob] For inspect jobs, a snapshot of the configuration.
  /// [location] Deprecated. This field has no effect.
  /// [name] Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  /// [project] Optional.
  /// [status] A status for this trigger.
  /// [triggerId] The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  /// [triggers] A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  JobTriggerArgs({
    this.description,
    this.displayName,
    this.inspectJob,
    this.location,
    this.name,
    this.project,
    required this.status,
    this.triggerId,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'inspectJob': ?pulumi.Input.mapOptionalInputValue<GooglePrivacyDlpV2InspectJobConfig, Map<String, dynamic>>(inspectJob, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'status': pulumi.Input.mapInputValue<JobTriggerStatus, String>(status, (value) => value.wireValue),
      'triggerId': ?triggerId,
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<GooglePrivacyDlpV2Trigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<GooglePrivacyDlpV2Trigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return JobTriggerArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inspectJob: (() { final guardedValue = map['inspectJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GooglePrivacyDlpV2InspectJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(JobTriggerStatus.fromValue(map['status']! as String)),
      triggerId: (() { final guardedValue = map['triggerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GooglePrivacyDlpV2Trigger>(guardedValue, (value) => GooglePrivacyDlpV2Trigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

