// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output.dart';
import 'google_cloud_ml_v1_hyperparameter_output_hyperparameter_metric.dart';

/// Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.
class GoogleCloudMlV1HyperparameterOutput {
  /// All recorded object metrics for this trial. This field is not currently populated.
  final List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>? allMetrics;
  /// Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  final GoogleCloudMlV1BuiltInAlgorithmOutput? builtInAlgorithmOutput;
  /// The final objective metric seen for this trial.
  final GoogleCloudMlV1HyperparameterOutputHyperparameterMetric? finalMetric;
  /// The hyperparameters given to this trial.
  final Map<String, String>? hyperparameters;
  /// True if the trial is stopped early.
  final bool? isTrialStoppedEarly;
  /// The trial id for these results.
  final String? trialId;
  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final Map<String, String>? webAccessUris;

  /// Creates a new [GoogleCloudMlV1HyperparameterOutput].
  /// [allMetrics] All recorded object metrics for this trial. This field is not currently populated.
  /// [builtInAlgorithmOutput] Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  /// [finalMetric] The final objective metric seen for this trial.
  /// [hyperparameters] The hyperparameters given to this trial.
  /// [isTrialStoppedEarly] True if the trial is stopped early.
  /// [trialId] The trial id for these results.
  /// [webAccessUris] URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  GoogleCloudMlV1HyperparameterOutput({
    this.allMetrics,
    this.builtInAlgorithmOutput,
    this.finalMetric,
    this.hyperparameters,
    this.isTrialStoppedEarly,
    this.trialId,
    this.webAccessUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allMetrics': ?allMetrics == null ? null : pulumi.Input.encodeList<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric, Map<String, dynamic>>(allMetrics!, (value) => value.toMap()),
      'builtInAlgorithmOutput': ?builtInAlgorithmOutput == null ? null : builtInAlgorithmOutput!.toMap(),
      'finalMetric': ?finalMetric == null ? null : finalMetric!.toMap(),
      'hyperparameters': ?hyperparameters,
      'isTrialStoppedEarly': ?isTrialStoppedEarly,
      'trialId': ?trialId,
      'webAccessUris': ?webAccessUris,
    };
  }

  factory GoogleCloudMlV1HyperparameterOutput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterOutput(
      allMetrics: map['allMetrics'] == null ? null : pulumi.Input.decodeList<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>(map['allMetrics'], (value) => GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap((value as Map).cast<String, dynamic>())),
      builtInAlgorithmOutput: map['builtInAlgorithmOutput'] == null ? null : GoogleCloudMlV1BuiltInAlgorithmOutput.fromMap((map['builtInAlgorithmOutput'] as Map).cast<String, dynamic>()),
      finalMetric: map['finalMetric'] == null ? null : GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap((map['finalMetric'] as Map).cast<String, dynamic>()),
      hyperparameters: map['hyperparameters'] == null ? null : (map['hyperparameters'] as Map).cast<String, String>(),
      isTrialStoppedEarly: map['isTrialStoppedEarly'] == null ? null : map['isTrialStoppedEarly'] as bool,
      trialId: map['trialId'] == null ? null : map['trialId'] as String,
      webAccessUris: map['webAccessUris'] == null ? null : (map['webAccessUris'] as Map).cast<String, String>(),
    );
  }
}

