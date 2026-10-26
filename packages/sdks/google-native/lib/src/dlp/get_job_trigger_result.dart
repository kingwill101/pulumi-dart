// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_error_response.dart';
import 'google_privacy_dlp_v2_inspect_job_config_response.dart';
import 'google_privacy_dlp_v2_trigger_response.dart';

/// Result data returned by getJobTrigger.
class GetJobTriggerResult {
  /// The creation timestamp of a triggeredJob.
  final String? createTime;
  /// User provided description (max 256 chars)
  final String? description;
  /// Display name (max 100 chars)
  final String? displayName;
  /// A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  final List<GooglePrivacyDlpV2ErrorResponse>? errors;
  /// For inspect jobs, a snapshot of the configuration.
  final GooglePrivacyDlpV2InspectJobConfigResponse? inspectJob;
  /// The timestamp of the last time this trigger executed.
  final String? lastRunTime;
  /// Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  final String? name;
  /// A status for this trigger.
  final String? status;
  /// A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  final List<GooglePrivacyDlpV2TriggerResponse>? triggers;
  /// The last update timestamp of a triggeredJob.
  final String? updateTime;

  /// Creates a new [GetJobTriggerResult].
  /// [createTime] The creation timestamp of a triggeredJob.
  /// [description] User provided description (max 256 chars)
  /// [displayName] Display name (max 100 chars)
  /// [errors] A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.
  /// [inspectJob] For inspect jobs, a snapshot of the configuration.
  /// [lastRunTime] The timestamp of the last time this trigger executed.
  /// [name] Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.
  /// [status] A status for this trigger.
  /// [triggers] A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.
  /// [updateTime] The last update timestamp of a triggeredJob.
  const GetJobTriggerResult({
    this.createTime,
    this.description,
    this.displayName,
    this.errors,
    this.inspectJob,
    this.lastRunTime,
    this.name,
    this.status,
    this.triggers,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'errors': ?(() { final guardedValue = errors; if (guardedValue == null) return null; return pulumi.Input.encodeList<GooglePrivacyDlpV2ErrorResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inspectJob': ?inspectJob?.toMap(),
      'lastRunTime': ?lastRunTime,
      'name': ?name,
      'status': ?status,
      'triggers': ?(() { final guardedValue = triggers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GooglePrivacyDlpV2TriggerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetJobTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetJobTriggerResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2ErrorResponse>(guardedValue, (value) => GooglePrivacyDlpV2ErrorResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      inspectJob: (() { final guardedValue = map['inspectJob']; if (guardedValue == null) return null; return GooglePrivacyDlpV2InspectJobConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastRunTime: (() { final guardedValue = map['lastRunTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2TriggerResponse>(guardedValue, (value) => GooglePrivacyDlpV2TriggerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
