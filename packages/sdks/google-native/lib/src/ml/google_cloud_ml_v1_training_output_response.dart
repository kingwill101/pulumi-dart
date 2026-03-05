// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output_response.dart';
import 'google_cloud_ml_v1_hyperparameter_output_response.dart';

/// Represents results of a training job. Output only.
class GoogleCloudMlV1TrainingOutputResponse {
  /// Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
  final pulumi.Input<GoogleCloudMlV1BuiltInAlgorithmOutputResponse> builtInAlgorithmOutput;
  /// The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
  final pulumi.Input<String> completedTrialCount;
  /// The amount of ML units consumed by the job.
  final pulumi.Input<double> consumedMLUnits;
  /// The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.
  final pulumi.Input<String> hyperparameterMetricTag;
  /// Whether this job is a built-in Algorithm job.
  final pulumi.Input<bool> isBuiltInAlgorithmJob;
  /// Whether this job is a hyperparameter tuning job.
  final pulumi.Input<bool> isHyperparameterTuningJob;
  /// Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
  final pulumi.Input<List<GoogleCloudMlV1HyperparameterOutputResponse>> trials;
  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final pulumi.Input<Map<String, String>> webAccessUris;

  /// Creates a new [GoogleCloudMlV1TrainingOutputResponse].
  /// [builtInAlgorithmOutput] Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
  /// [completedTrialCount] The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
  /// [consumedMLUnits] The amount of ML units consumed by the job.
  /// [hyperparameterMetricTag] The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.
  /// [isBuiltInAlgorithmJob] Whether this job is a built-in Algorithm job.
  /// [isHyperparameterTuningJob] Whether this job is a hyperparameter tuning job.
  /// [trials] Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
  /// [webAccessUris] URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  GoogleCloudMlV1TrainingOutputResponse({
    required this.builtInAlgorithmOutput,
    required this.completedTrialCount,
    required this.consumedMLUnits,
    required this.hyperparameterMetricTag,
    required this.isBuiltInAlgorithmJob,
    required this.isHyperparameterTuningJob,
    required this.trials,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builtInAlgorithmOutput': pulumi.Input.mapInputValue<GoogleCloudMlV1BuiltInAlgorithmOutputResponse, Map<String, dynamic>>(builtInAlgorithmOutput, (value) => value.toMap()),
      'completedTrialCount': completedTrialCount,
      'consumedMLUnits': consumedMLUnits,
      'hyperparameterMetricTag': hyperparameterMetricTag,
      'isBuiltInAlgorithmJob': isBuiltInAlgorithmJob,
      'isHyperparameterTuningJob': isHyperparameterTuningJob,
      'trials': pulumi.Input.mapInputValue<List<GoogleCloudMlV1HyperparameterOutputResponse>, List<Map<String, dynamic>>>(trials, (value) => pulumi.Input.encodeList<GoogleCloudMlV1HyperparameterOutputResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webAccessUris': webAccessUris,
    };
  }

  factory GoogleCloudMlV1TrainingOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1TrainingOutputResponse(
      builtInAlgorithmOutput: pulumi.Input.fromValue(GoogleCloudMlV1BuiltInAlgorithmOutputResponse.fromMap((map['builtInAlgorithmOutput']! as Map).cast<String, dynamic>())),
      completedTrialCount: pulumi.Input.fromValue(map['completedTrialCount'] as String),
      consumedMLUnits: pulumi.Input.fromValue(map['consumedMLUnits'] as double),
      hyperparameterMetricTag: pulumi.Input.fromValue(map['hyperparameterMetricTag'] as String),
      isBuiltInAlgorithmJob: pulumi.Input.fromValue(map['isBuiltInAlgorithmJob'] as bool),
      isHyperparameterTuningJob: pulumi.Input.fromValue(map['isHyperparameterTuningJob'] as bool),
      trials: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudMlV1HyperparameterOutputResponse>(map['trials']!, (value) => GoogleCloudMlV1HyperparameterOutputResponse.fromMap((value as Map).cast<String, dynamic>()))),
      webAccessUris: pulumi.Input.fromValue((map['webAccessUris'] as Map).cast<String, String>()),
    );
  }
}

