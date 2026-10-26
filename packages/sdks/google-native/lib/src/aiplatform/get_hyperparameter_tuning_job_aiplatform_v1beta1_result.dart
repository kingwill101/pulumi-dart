// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_study_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_trial_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// Result data returned by getHyperparameterTuningJob.
class GetHyperparameterTuningJobAiplatformV1beta1Result {
  /// Time when the HyperparameterTuningJob was created.
  final String? createTime;
  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String? displayName;
  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse? encryptionSpec;
  /// Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  final String? endTime;
  /// Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  final GoogleRpcStatusResponseAiplatformV1beta1? error;
  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String>? labels;
  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  final int? maxFailedTrialCount;
  /// The desired total number of Trials.
  final int? maxTrialCount;
  /// Resource name of the HyperparameterTuningJob.
  final String? name;
  /// The desired number of Trials to run in parallel.
  final int? parallelTrialCount;
  /// Time when the HyperparameterTuningJob for the first time entered the `JOB_STATE_RUNNING` state.
  final String? startTime;
  /// The detailed state of the job.
  final String? state;
  /// Study configuration of the HyperparameterTuningJob.
  final GoogleCloudAiplatformV1beta1StudySpecResponse? studySpec;
  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  final GoogleCloudAiplatformV1beta1CustomJobSpecResponse? trialJobSpec;
  /// Trials of the HyperparameterTuningJob.
  final List<GoogleCloudAiplatformV1beta1TrialResponse>? trials;
  /// Time when the HyperparameterTuningJob was most recently updated.
  final String? updateTime;

  /// Creates a new [GetHyperparameterTuningJobAiplatformV1beta1Result].
  /// [createTime] Time when the HyperparameterTuningJob was created.
  /// [displayName] The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  /// [endTime] Time when the HyperparameterTuningJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  /// [error] Only populated when job's state is JOB_STATE_FAILED or JOB_STATE_CANCELLED.
  /// [labels] The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [maxFailedTrialCount] The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  /// [maxTrialCount] The desired total number of Trials.
  /// [name] Resource name of the HyperparameterTuningJob.
  /// [parallelTrialCount] The desired number of Trials to run in parallel.
  /// [startTime] Time when the HyperparameterTuningJob for the first time entered the `JOB_STATE_RUNNING` state.
  /// [state] The detailed state of the job.
  /// [studySpec] Study configuration of the HyperparameterTuningJob.
  /// [trialJobSpec] The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  /// [trials] Trials of the HyperparameterTuningJob.
  /// [updateTime] Time when the HyperparameterTuningJob was most recently updated.
  const GetHyperparameterTuningJobAiplatformV1beta1Result({
    this.createTime,
    this.displayName,
    this.encryptionSpec,
    this.endTime,
    this.error,
    this.labels,
    this.maxFailedTrialCount,
    this.maxTrialCount,
    this.name,
    this.parallelTrialCount,
    this.startTime,
    this.state,
    this.studySpec,
    this.trialJobSpec,
    this.trials,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'endTime': ?endTime,
      'error': ?error?.toMap(),
      'labels': ?labels,
      'maxFailedTrialCount': ?maxFailedTrialCount,
      'maxTrialCount': ?maxTrialCount,
      'name': ?name,
      'parallelTrialCount': ?parallelTrialCount,
      'startTime': ?startTime,
      'state': ?state,
      'studySpec': ?studySpec?.toMap(),
      'trialJobSpec': ?trialJobSpec?.toMap(),
      'trials': ?(() { final guardedValue = trials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudAiplatformV1beta1TrialResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetHyperparameterTuningJobAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobAiplatformV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return GoogleRpcStatusResponseAiplatformV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      maxFailedTrialCount: (() { final guardedValue = map['maxFailedTrialCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      maxTrialCount: (() { final guardedValue = map['maxTrialCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parallelTrialCount: (() { final guardedValue = map['parallelTrialCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      studySpec: (() { final guardedValue = map['studySpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1StudySpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      trialJobSpec: (() { final guardedValue = map['trialJobSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1CustomJobSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      trials: (() { final guardedValue = map['trials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudAiplatformV1beta1TrialResponse>(guardedValue, (value) => GoogleCloudAiplatformV1beta1TrialResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
