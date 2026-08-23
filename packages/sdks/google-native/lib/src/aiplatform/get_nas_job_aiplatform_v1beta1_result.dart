// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_output_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// Result data returned by getNasJob.
class GetNasJobAiplatformV1beta1Result {
  /// Time when the NasJob was created.
  final String createTime;
  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;
  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  final bool enableRestrictedImageTraining;
  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse encryptionSpec;
  /// Time when the NasJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String endTime;
  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  final GoogleRpcStatusResponseAiplatformV1beta1 error;
  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;
  /// Resource name of the NasJob.
  final String name;
  /// Output of the NasJob.
  final GoogleCloudAiplatformV1beta1NasJobOutputResponse nasJobOutput;
  /// The specification of a NasJob.
  final GoogleCloudAiplatformV1beta1NasJobSpecResponse nasJobSpec;
  /// Time when the NasJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String startTime;
  /// The detailed state of the job.
  final String state;
  /// Time when the NasJob was most recently updated.
  final String updateTime;

  /// Creates a new [GetNasJobAiplatformV1beta1Result].
  /// [createTime] Time when the NasJob was created.
  /// [displayName] The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [enableRestrictedImageTraining] Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  /// [encryptionSpec] Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  /// [endTime] Time when the NasJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  /// [error] Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  /// [labels] The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [name] Resource name of the NasJob.
  /// [nasJobOutput] Output of the NasJob.
  /// [nasJobSpec] The specification of a NasJob.
  /// [startTime] Time when the NasJob for the first time entered the `JOB_STATE_RUNNING` state.
  /// [state] The detailed state of the job.
  /// [updateTime] Time when the NasJob was most recently updated.
  const GetNasJobAiplatformV1beta1Result({
    required this.createTime,
    required this.displayName,
    required this.enableRestrictedImageTraining,
    required this.encryptionSpec,
    required this.endTime,
    required this.error,
    required this.labels,
    required this.name,
    required this.nasJobOutput,
    required this.nasJobSpec,
    required this.startTime,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'displayName': displayName,
      'enableRestrictedImageTraining': enableRestrictedImageTraining,
      'encryptionSpec': encryptionSpec.toMap(),
      'endTime': endTime,
      'error': error.toMap(),
      'labels': labels,
      'name': name,
      'nasJobOutput': nasJobOutput.toMap(),
      'nasJobSpec': nasJobSpec.toMap(),
      'startTime': startTime,
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetNasJobAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetNasJobAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      enableRestrictedImageTraining: map['enableRestrictedImageTraining'] as bool,
      encryptionSpec: GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((map['encryptionSpec']! as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      error: GoogleRpcStatusResponseAiplatformV1beta1.fromMap((map['error']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      nasJobOutput: GoogleCloudAiplatformV1beta1NasJobOutputResponse.fromMap((map['nasJobOutput']! as Map).cast<String, dynamic>()),
      nasJobSpec: GoogleCloudAiplatformV1beta1NasJobSpecResponse.fromMap((map['nasJobSpec']! as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
