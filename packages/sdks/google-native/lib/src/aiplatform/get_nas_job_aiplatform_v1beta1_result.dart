// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_output_response.dart';
import 'google_cloud_aiplatform_v1beta1_nas_job_spec_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// Result data returned by getNasJob.
class GetNasJobAiplatformV1beta1Result {
  /// Time when the NasJob was created.
  final String? createTime;
  /// The display name of the NasJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String? displayName;
  /// Optional. Enable a separation of Custom model training and restricted image training for tenant project.
  final bool? enableRestrictedImageTraining;
  /// Customer-managed encryption key options for a NasJob. If this is set, then all resources created by the NasJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse? encryptionSpec;
  /// Time when the NasJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String? endTime;
  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  final GoogleRpcStatusResponseAiplatformV1beta1? error;
  /// The labels with user-defined metadata to organize NasJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;
  /// Resource name of the NasJob.
  final String? name;
  /// Output of the NasJob.
  final GoogleCloudAiplatformV1beta1NasJobOutputResponse? nasJobOutput;
  /// The specification of a NasJob.
  final GoogleCloudAiplatformV1beta1NasJobSpecResponse? nasJobSpec;
  /// Time when the NasJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String? startTime;
  /// The detailed state of the job.
  final String? state;
  /// Time when the NasJob was most recently updated.
  final String? updateTime;

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
    this.createTime,
    this.displayName,
    this.enableRestrictedImageTraining,
    this.encryptionSpec,
    this.endTime,
    this.error,
    this.labels,
    this.name,
    this.nasJobOutput,
    this.nasJobSpec,
    this.startTime,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'enableRestrictedImageTraining': ?enableRestrictedImageTraining,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'nasJobOutput': ?nasJobOutput?.toMap(),
      'nasJobSpec': ?nasJobSpec?.toMap(),
      'startTime': ?startTime,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetNasJobAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetNasJobAiplatformV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableRestrictedImageTraining: (() { final guardedValue = map['enableRestrictedImageTraining']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return GoogleRpcStatusResponseAiplatformV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nasJobOutput: (() { final guardedValue = map['nasJobOutput']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1NasJobOutputResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nasJobSpec: (() { final guardedValue = map['nasJobSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1NasJobSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
