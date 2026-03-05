// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_custom_job_spec.dart';
import 'google_cloud_aiplatform_v1_encryption_spec.dart';
import 'google_cloud_aiplatform_v1_study_spec.dart';

/// {@template pulumi_aiplatform_v1_hyperparameter_tuning_job_args_doc}
/// The set of arguments for HyperparameterTuningJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_hyperparameter_tuning_job_args_doc}
class HyperparameterTuningJobArgs {
  /// The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;
  /// Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  final pulumi.Input<GoogleCloudAiplatformV1EncryptionSpec>? encryptionSpec;
  /// The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  final pulumi.Input<int>? maxFailedTrialCount;
  /// The desired total number of Trials.
  final pulumi.Input<int> maxTrialCount;
  /// The desired number of Trials to run in parallel.
  final pulumi.Input<int> parallelTrialCount;
  final pulumi.Input<String>? project;
  /// Study configuration of the HyperparameterTuningJob.
  final pulumi.Input<GoogleCloudAiplatformV1StudySpec> studySpec;
  /// The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  final pulumi.Input<GoogleCloudAiplatformV1CustomJobSpec> trialJobSpec;

  /// Creates a new [HyperparameterTuningJobArgs].
  /// [displayName] The display name of the HyperparameterTuningJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [encryptionSpec] Customer-managed encryption key options for a HyperparameterTuningJob. If this is set, then all resources created by the HyperparameterTuningJob will be encrypted with the provided encryption key.
  /// [labels] The labels with user-defined metadata to organize HyperparameterTuningJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [maxFailedTrialCount] The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  /// [maxTrialCount] The desired total number of Trials.
  /// [parallelTrialCount] The desired number of Trials to run in parallel.
  /// [project] Optional.
  /// [studySpec] Study configuration of the HyperparameterTuningJob.
  /// [trialJobSpec] The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  HyperparameterTuningJobArgs({
    required this.displayName,
    this.encryptionSpec,
    this.labels,
    this.location,
    this.maxFailedTrialCount,
    required this.maxTrialCount,
    required this.parallelTrialCount,
    this.project,
    required this.studySpec,
    required this.trialJobSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1EncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maxFailedTrialCount': ?maxFailedTrialCount,
      'maxTrialCount': maxTrialCount,
      'parallelTrialCount': parallelTrialCount,
      'project': ?project,
      'studySpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1StudySpec, Map<String, dynamic>>(studySpec, (value) => value.toMap()),
      'trialJobSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1CustomJobSpec, Map<String, dynamic>>(trialJobSpec, (value) => value.toMap()),
    };
  }

  factory HyperparameterTuningJobArgs.fromMap(Map<String, dynamic> map) {
    return HyperparameterTuningJobArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1EncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxFailedTrialCount: (() { final guardedValue = map['maxFailedTrialCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxTrialCount: pulumi.Input.fromValue(map['maxTrialCount'] as int),
      parallelTrialCount: pulumi.Input.fromValue(map['parallelTrialCount'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      studySpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1StudySpec.fromMap((map['studySpec']! as Map).cast<String, dynamic>())),
      trialJobSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1CustomJobSpec.fromMap((map['trialJobSpec']! as Map).cast<String, dynamic>())),
    );
  }
}

