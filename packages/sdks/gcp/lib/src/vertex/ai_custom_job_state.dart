// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_custom_job_encryption_spec.dart';
import 'ai_custom_job_error.dart';
import 'ai_custom_job_job_spec.dart';

/// Input properties used for looking up and filtering AiCustomJob resources.
class AiCustomJobState {
  /// Time when the CustomJob was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the CustomJob.
  /// The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Customer-managed encryption key options for a CustomJob.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobEncryptionSpec?>? encryptionSpec;
  /// Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final pulumi.Input<String?>? endTime;
  /// Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  /// Structure is documented below.
  final pulumi.Input<List<AiCustomJobError>?>? errors;
  /// Job spec.
  /// Structure is documented below.
  final pulumi.Input<AiCustomJobJobSpec?>? jobSpec;
  /// The labels with user-defined metadata to organize CustomJobs.
  /// Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The resource name of the CustomJob.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The Google Cloud region to run the custom job in.
  final pulumi.Input<String?>? region;
  /// Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  final pulumi.Input<String?>? startTime;
  /// The detailed state of the job.
  final pulumi.Input<String?>? state;
  /// Time when the CustomJob was most recently updated.
  final pulumi.Input<String?>? updateTime;
  /// URIs for accessing interactive shells (one URI for each training node).
  final pulumi.Input<Map<String, String>?>? webAccessUris;

  /// Creates a new [AiCustomJobState].
  /// [createTime] Time when the CustomJob was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the CustomJob.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionSpec] Customer-managed encryption key options for a CustomJob.
  /// [endTime] Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  /// [errors] Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  /// [jobSpec] Job spec.
  /// [labels] The labels with user-defined metadata to organize CustomJobs.
  /// [name] The resource name of the CustomJob.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The Google Cloud region to run the custom job in.
  /// [startTime] Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  /// [state] The detailed state of the job.
  /// [updateTime] Time when the CustomJob was most recently updated.
  /// [webAccessUris] URIs for accessing interactive shells (one URI for each training node).
  const AiCustomJobState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.encryptionSpec,
    this.endTime,
    this.errors,
    this.jobSpec,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.region,
    this.startTime,
    this.state,
    this.updateTime,
    this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'endTime': ?endTime,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiCustomJobError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiCustomJobError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jobSpec': ?pulumi.Input.mapOptionalInputValue<AiCustomJobJobSpec, Map<String, dynamic>>(jobSpec, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'startTime': ?startTime,
      'state': ?state,
      'updateTime': ?updateTime,
      'webAccessUris': ?webAccessUris,
    };
  }

  factory AiCustomJobState.fromMap(Map<String, dynamic> map) {
    return AiCustomJobState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiCustomJobError>(guardedValue, (value) => AiCustomJobError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jobSpec: (() { final guardedValue = map['jobSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiCustomJobJobSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAccessUris: (() { final guardedValue = map['webAccessUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
