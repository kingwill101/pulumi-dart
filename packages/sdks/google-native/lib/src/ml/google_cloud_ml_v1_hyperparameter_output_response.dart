// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output_response.dart';
import 'google_cloud_ml_v1_hyperparameter_output_hyperparameter_metric_response.dart';

/// Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.
class GoogleCloudMlV1HyperparameterOutputResponse {
  /// All recorded object metrics for this trial. This field is not currently populated.
  final pulumi.Input<List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse>> allMetrics;
  /// Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  final pulumi.Input<GoogleCloudMlV1BuiltInAlgorithmOutputResponse> builtInAlgorithmOutput;
  /// End time for the trial.
  final pulumi.Input<String> endTime;
  /// The final objective metric seen for this trial.
  final pulumi.Input<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse> finalMetric;
  /// The hyperparameters given to this trial.
  final pulumi.Input<Map<String, String>> hyperparameters;
  /// True if the trial is stopped early.
  final pulumi.Input<bool> isTrialStoppedEarly;
  /// Start time for the trial.
  final pulumi.Input<String> startTime;
  /// The detailed state of the trial.
  final pulumi.Input<String> state;
  /// The trial id for these results.
  final pulumi.Input<String> trialId;
  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final pulumi.Input<Map<String, String>> webAccessUris;

  /// Creates a new [GoogleCloudMlV1HyperparameterOutputResponse].
  /// [allMetrics] All recorded object metrics for this trial. This field is not currently populated.
  /// [builtInAlgorithmOutput] Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  /// [endTime] End time for the trial.
  /// [finalMetric] The final objective metric seen for this trial.
  /// [hyperparameters] The hyperparameters given to this trial.
  /// [isTrialStoppedEarly] True if the trial is stopped early.
  /// [startTime] Start time for the trial.
  /// [state] The detailed state of the trial.
  /// [trialId] The trial id for these results.
  /// [webAccessUris] URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  GoogleCloudMlV1HyperparameterOutputResponse({
    required this.allMetrics,
    required this.builtInAlgorithmOutput,
    required this.endTime,
    required this.finalMetric,
    required this.hyperparameters,
    required this.isTrialStoppedEarly,
    required this.startTime,
    required this.state,
    required this.trialId,
    required this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allMetrics': pulumi.Input.mapInputValue<List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse>, List<Map<String, dynamic>>>(allMetrics, (value) => pulumi.Input.encodeList<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'builtInAlgorithmOutput': pulumi.Input.mapInputValue<GoogleCloudMlV1BuiltInAlgorithmOutputResponse, Map<String, dynamic>>(builtInAlgorithmOutput, (value) => value.toMap()),
      'endTime': endTime,
      'finalMetric': pulumi.Input.mapInputValue<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse, Map<String, dynamic>>(finalMetric, (value) => value.toMap()),
      'hyperparameters': hyperparameters,
      'isTrialStoppedEarly': isTrialStoppedEarly,
      'startTime': startTime,
      'state': state,
      'trialId': trialId,
      'webAccessUris': webAccessUris,
    };
  }

  factory GoogleCloudMlV1HyperparameterOutputResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutputResponse(
      allMetrics: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse>(map['allMetrics']!, (value) => GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse.fromMap((value as Map).cast<String, dynamic>()))),
      builtInAlgorithmOutput: pulumi.Input.fromValue(GoogleCloudMlV1BuiltInAlgorithmOutputResponse.fromMap((map['builtInAlgorithmOutput']! as Map).cast<String, dynamic>())),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      finalMetric: pulumi.Input.fromValue(GoogleCloudMlV1HyperparameterOutputHyperparameterMetricResponse.fromMap((map['finalMetric']! as Map).cast<String, dynamic>())),
      hyperparameters: pulumi.Input.fromValue((map['hyperparameters'] as Map).cast<String, String>()),
      isTrialStoppedEarly: pulumi.Input.fromValue(map['isTrialStoppedEarly'] as bool),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      trialId: pulumi.Input.fromValue(map['trialId'] as String),
      webAccessUris: pulumi.Input.fromValue((map['webAccessUris'] as Map).cast<String, String>()),
    );
  }
}

