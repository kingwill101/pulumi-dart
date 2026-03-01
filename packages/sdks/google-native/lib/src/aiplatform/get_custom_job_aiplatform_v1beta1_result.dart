// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// Result data returned by getCustomJob.
class GetCustomJobAiplatformV1beta1Result {
  /// Time when the CustomJob was created.
  final String createTime;
  /// The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;
  /// Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse encryptionSpec;
  /// Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String endTime;
  /// Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  final GoogleRpcStatusResponseAiplatformV1beta1 error;
  /// Job spec.
  final GoogleCloudAiplatformV1beta1CustomJobSpecResponse jobSpec;
  /// The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;
  /// Resource name of a CustomJob.
  final String name;
  /// Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String startTime;
  /// The detailed state of the job.
  final String state;
  /// Time when the CustomJob was most recently updated.
  final String updateTime;
  /// URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if job_spec.enable_web_access is `true`. The keys are names of each node in the training job; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  final Map<String, String> webAccessUris;

  /// Creates a new [GetCustomJobAiplatformV1beta1Result].
  /// [createTime] Time when the CustomJob was created.
  /// [displayName] The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  /// [endTime] Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  /// [error] Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  /// [jobSpec] Job spec.
  /// [labels] The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [name] Resource name of a CustomJob.
  /// [startTime] Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  /// [state] The detailed state of the job.
  /// [updateTime] Time when the CustomJob was most recently updated.
  /// [webAccessUris] URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if job_spec.enable_web_access is `true`. The keys are names of each node in the training job; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  GetCustomJobAiplatformV1beta1Result({
    required this.createTime,
    required this.displayName,
    required this.encryptionSpec,
    required this.endTime,
    required this.error,
    required this.jobSpec,
    required this.labels,
    required this.name,
    required this.startTime,
    required this.state,
    required this.updateTime,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'encryptionSpec': encryptionSpec.toMap(),
      'endTime': endTime,
      'error': error.toMap(),
      'jobSpec': jobSpec.toMap(),
      'labels': labels,
      'name': name,
      'startTime': startTime,
      'state': state,
      'updateTime': updateTime,
      'webAccessUris': webAccessUris,
    };
  }

  factory GetCustomJobAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetCustomJobAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      encryptionSpec: GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      error: GoogleRpcStatusResponseAiplatformV1beta1.fromMap((map['error'] as Map).cast<String, dynamic>()),
      jobSpec: GoogleCloudAiplatformV1beta1CustomJobSpecResponse.fromMap((map['jobSpec'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      webAccessUris: (map['webAccessUris'] as Map).cast<String, String>(),
    );
  }
}

