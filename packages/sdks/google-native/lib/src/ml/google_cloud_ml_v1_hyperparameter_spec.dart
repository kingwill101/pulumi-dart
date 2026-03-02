// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_hyperparameter_spec_algorithm.dart';
import 'google_cloud_ml_v1_hyperparameter_spec_goal.dart';
import 'google_cloud_ml_v1_parameter_spec.dart';

/// Represents a set of hyperparameters to optimize.
class GoogleCloudMlV1HyperparameterSpec {
  /// Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
  final pulumi.Input<GoogleCloudMlV1HyperparameterSpecAlgorithm>? algorithm;
  /// Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.
  final pulumi.Input<bool>? enableTrialEarlyStopping;
  /// The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
  final pulumi.Input<GoogleCloudMlV1HyperparameterSpecGoal> goal;
  /// Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, "training/hptuning/metric" will be used.
  final pulumi.Input<String>? hyperparameterMetricTag;
  /// Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.
  final pulumi.Input<int>? maxFailedTrials;
  /// Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.
  final pulumi.Input<int>? maxParallelTrials;
  /// Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.
  final pulumi.Input<int>? maxTrials;
  /// The set of parameters to tune.
  final pulumi.Input<List<GoogleCloudMlV1ParameterSpec>> params;
  /// Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.
  final pulumi.Input<String>? resumePreviousJobId;

  /// Creates a new [GoogleCloudMlV1HyperparameterSpec].
  /// [algorithm] Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default AI Platform hyperparameter tuning algorithm if unspecified.
  /// [enableTrialEarlyStopping] Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping.
  /// [goal] The type of goal to use for tuning. Available types are `MAXIMIZE` and `MINIMIZE`. Defaults to `MAXIMIZE`.
  /// [hyperparameterMetricTag] Optional. The TensorFlow summary tag name to use for optimizing trials. For current versions of TensorFlow, this tag name should exactly match what is shown in TensorBoard, including all scopes. For versions of TensorFlow prior to 0.12, this should be only the tag passed to tf.Summary. By default, "training/hptuning/metric" will be used.
  /// [maxFailedTrials] Optional. The number of failed trials that need to be seen before failing the hyperparameter tuning job. You can specify this field to override the default failing criteria for AI Platform hyperparameter tuning jobs. Defaults to zero, which means the service decides when a hyperparameter job should fail.
  /// [maxParallelTrials] Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization. Each trial will use the same scale tier and machine types. Defaults to one.
  /// [maxTrials] Optional. How many training trials should be attempted to optimize the specified hyperparameters. Defaults to one.
  /// [params] The set of parameters to tune.
  /// [resumePreviousJobId] Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study.
  GoogleCloudMlV1HyperparameterSpec({
    this.algorithm,
    this.enableTrialEarlyStopping,
    required this.goal,
    this.hyperparameterMetricTag,
    this.maxFailedTrials,
    this.maxParallelTrials,
    this.maxTrials,
    required this.params,
    this.resumePreviousJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1HyperparameterSpecAlgorithm, String>(algorithm, (value) => value.value),
      'enableTrialEarlyStopping': ?enableTrialEarlyStopping,
      'goal': pulumi.Input.mapInputValue<GoogleCloudMlV1HyperparameterSpecGoal, String>(goal, (value) => value.value),
      'hyperparameterMetricTag': ?hyperparameterMetricTag,
      'maxFailedTrials': ?maxFailedTrials,
      'maxParallelTrials': ?maxParallelTrials,
      'maxTrials': ?maxTrials,
      'params': pulumi.Input.mapInputValue<List<GoogleCloudMlV1ParameterSpec>, List<Map<String, dynamic>>>(params, (value) => pulumi.Input.encodeList<GoogleCloudMlV1ParameterSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resumePreviousJobId': ?resumePreviousJobId,
    };
  }

  factory GoogleCloudMlV1HyperparameterSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1HyperparameterSpec(
      algorithm: map['algorithm'] == null ? null : (GoogleCloudMlV1HyperparameterSpecAlgorithm.fromValue(map['algorithm']! as String)).input(),
      enableTrialEarlyStopping: map['enableTrialEarlyStopping'] == null ? null : (map['enableTrialEarlyStopping']! as bool).input(),
      goal: (GoogleCloudMlV1HyperparameterSpecGoal.fromValue(map['goal'] as String)).input(),
      hyperparameterMetricTag: map['hyperparameterMetricTag'] == null ? null : (map['hyperparameterMetricTag']! as String).input(),
      maxFailedTrials: map['maxFailedTrials'] == null ? null : (map['maxFailedTrials']! as int).input(),
      maxParallelTrials: map['maxParallelTrials'] == null ? null : (map['maxParallelTrials']! as int).input(),
      maxTrials: map['maxTrials'] == null ? null : (map['maxTrials']! as int).input(),
      params: (pulumi.Input.decodeList<GoogleCloudMlV1ParameterSpec>(map['params'], (value) => GoogleCloudMlV1ParameterSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resumePreviousJobId: map['resumePreviousJobId'] == null ? null : (map['resumePreviousJobId']! as String).input(),
    );
  }
}

