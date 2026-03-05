// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_prediction_input.dart';
import 'google_cloud_ml_v1_prediction_output.dart';
import 'google_cloud_ml_v1_training_input.dart';
import 'google_cloud_ml_v1_training_output.dart';

/// {@template pulumi_ml_v1_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_ml_v1_job_args_doc}
class JobArgs {
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  final pulumi.Input<String>? etag;
  /// The user-specified id of the job.
  final pulumi.Input<String> jobId;
  /// Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// Input parameters to create a prediction job.
  final pulumi.Input<GoogleCloudMlV1PredictionInput>? predictionInput;
  /// The current prediction job result.
  final pulumi.Input<GoogleCloudMlV1PredictionOutput>? predictionOutput;
  final pulumi.Input<String>? project;
  /// Input parameters to create a training job.
  final pulumi.Input<GoogleCloudMlV1TrainingInput>? trainingInput;
  /// The current training job result.
  final pulumi.Input<GoogleCloudMlV1TrainingOutput>? trainingOutput;

  /// Creates a new [JobArgs].
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a job from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform job updates in order to avoid race conditions: An `etag` is returned in the response to `GetJob`, and systems are expected to put that etag in the request to `UpdateJob` to ensure that their change will be applied to the same version of the job.
  /// [jobId] The user-specified id of the job.
  /// [labels] Optional. One or more labels that you can add, to organize your jobs. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels.
  /// [predictionInput] Input parameters to create a prediction job.
  /// [predictionOutput] The current prediction job result.
  /// [project] Optional.
  /// [trainingInput] Input parameters to create a training job.
  /// [trainingOutput] The current training job result.
  JobArgs({
    this.etag,
    required this.jobId,
    this.labels,
    this.predictionInput,
    this.predictionOutput,
    this.project,
    this.trainingInput,
    this.trainingOutput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'jobId': jobId,
      'labels': ?labels,
      'predictionInput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1PredictionInput, Map<String, dynamic>>(predictionInput, (value) => value.toMap()),
      'predictionOutput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1PredictionOutput, Map<String, dynamic>>(predictionOutput, (value) => value.toMap()),
      'project': ?project,
      'trainingInput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1TrainingInput, Map<String, dynamic>>(trainingInput, (value) => value.toMap()),
      'trainingOutput': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1TrainingOutput, Map<String, dynamic>>(trainingOutput, (value) => value.toMap()),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobId: pulumi.Input.fromValue(map['jobId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      predictionInput: (() { final guardedValue = map['predictionInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1PredictionInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predictionOutput: (() { final guardedValue = map['predictionOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1PredictionOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingInput: (() { final guardedValue = map['trainingInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1TrainingInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingOutput: (() { final guardedValue = map['trainingOutput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1TrainingOutput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

