// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_built_in_algorithm_output.dart';
import 'google_cloud_ml_v1_hyperparameter_output_hyperparameter_metric.dart';

/// Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.
class GoogleCloudMlV1HyperparameterOutput {
  /// All recorded object metrics for this trial. This field is not currently populated.
  final pulumi.Input<
    List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>
  >?
  allMetrics;

  /// Details related to built-in algorithms jobs. Only set for trials of built-in algorithms jobs that have succeeded.
  final pulumi.Input<GoogleCloudMlV1BuiltInAlgorithmOutput>?
  builtInAlgorithmOutput;

  /// The final objective metric seen for this trial.
  final pulumi.Input<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>?
  finalMetric;

  /// The hyperparameters given to this trial.
  final pulumi.Input<Map<String, String>>? hyperparameters;

  /// True if the trial is stopped early.
  final pulumi.Input<bool>? isTrialStoppedEarly;

  /// The trial id for these results.
  final pulumi.Input<String>? trialId;

  /// URIs for accessing [interactive shells](https://cloud.google.com/ai-platform/training/docs/monitor-debug-interactive-shell) (one URI for each training node). Only available if this trial is part of a hyperparameter tuning job and the job's training_input.enable_web_access is `true`. The keys are names of each node in the training job; for example, `master-replica-0` for the master node, `worker-replica-0` for the first worker, and `ps-replica-0` for the first parameter server. The values are the URIs for each node's interactive shell.
  final pulumi.Input<Map<String, String>>? webAccessUris;

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
      'allMetrics':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudMlV1HyperparameterOutputHyperparameterMetric>,
            List<Map<String, dynamic>>
          >(
            allMetrics,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudMlV1HyperparameterOutputHyperparameterMetric,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'builtInAlgorithmOutput':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1BuiltInAlgorithmOutput,
            Map<String, dynamic>
          >(builtInAlgorithmOutput, (value) => value.toMap()),
      'finalMetric':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudMlV1HyperparameterOutputHyperparameterMetric,
            Map<String, dynamic>
          >(finalMetric, (value) => value.toMap()),
      'hyperparameters': ?hyperparameters,
      'isTrialStoppedEarly': ?isTrialStoppedEarly,
      'trialId': ?trialId,
      'webAccessUris': ?webAccessUris,
    };
  }

  factory GoogleCloudMlV1HyperparameterOutput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1HyperparameterOutput(
      allMetrics: (() {
        final guardedValue = map['allMetrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
          >(
            guardedValue,
            (value) =>
                GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      builtInAlgorithmOutput: (() {
        final guardedValue = map['builtInAlgorithmOutput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudMlV1BuiltInAlgorithmOutput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      finalMetric: (() {
        final guardedValue = map['finalMetric'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hyperparameters: (() {
        final guardedValue = map['hyperparameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      isTrialStoppedEarly: (() {
        final guardedValue = map['isTrialStoppedEarly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      trialId: (() {
        final guardedValue = map['trialId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webAccessUris: (() {
        final guardedValue = map['webAccessUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
