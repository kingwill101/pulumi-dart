// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_canary_evaluation_metric_labels.dart';

/// {@template pulumi_apigee_v1_canary_evaluation_args_doc}
/// The set of arguments for CanaryEvaluation.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_canary_evaluation_args_doc}
class CanaryEvaluationArgs {
  /// The stable version that is serving requests.
  final pulumi.Input<String> control;
  /// End time for the evaluation's analysis.
  final pulumi.Input<String> endTime;
  final pulumi.Input<String> instanceId;
  /// Labels used to filter the metrics used for a canary evaluation.
  final pulumi.Input<GoogleCloudApigeeV1CanaryEvaluationMetricLabels> metricLabels;
  final pulumi.Input<String> organizationId;
  /// Start time for the canary evaluation's analysis.
  final pulumi.Input<String> startTime;
  /// The newer version that is serving requests.
  final pulumi.Input<String> treatment;

  /// Creates a new [CanaryEvaluationArgs].
  /// [control] The stable version that is serving requests.
  /// [endTime] End time for the evaluation's analysis.
  /// [instanceId] Required.
  /// [metricLabels] Labels used to filter the metrics used for a canary evaluation.
  /// [organizationId] Required.
  /// [startTime] Start time for the canary evaluation's analysis.
  /// [treatment] The newer version that is serving requests.
  CanaryEvaluationArgs({
    required pulumi.Output<String> control,
    required pulumi.Output<String> endTime,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<GoogleCloudApigeeV1CanaryEvaluationMetricLabels> metricLabels,
    required pulumi.Output<String> organizationId,
    required pulumi.Output<String> startTime,
    required pulumi.Output<String> treatment,
  }) :
      control = pulumi.Input.asInput<String>(control),
      endTime = pulumi.Input.asInput<String>(endTime),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      metricLabels = pulumi.Input.asInput<GoogleCloudApigeeV1CanaryEvaluationMetricLabels>(metricLabels),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      startTime = pulumi.Input.asInput<String>(startTime),
      treatment = pulumi.Input.asInput<String>(treatment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'control': control,
      'endTime': endTime,
      'instanceId': instanceId,
      'metricLabels': pulumi.Input.mapInputValue<GoogleCloudApigeeV1CanaryEvaluationMetricLabels, Map<String, dynamic>>(metricLabels, (value) => value.toMap()),
      'organizationId': organizationId,
      'startTime': startTime,
      'treatment': treatment,
    };
  }

  factory CanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return CanaryEvaluationArgs(
      control: pulumi.Output.create<String>(map['control'] as String),
      endTime: pulumi.Output.create<String>(map['endTime'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      metricLabels: pulumi.Output.create<GoogleCloudApigeeV1CanaryEvaluationMetricLabels>(GoogleCloudApigeeV1CanaryEvaluationMetricLabels.fromMap((map['metricLabels'] as Map).cast<String, dynamic>())),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      startTime: pulumi.Output.create<String>(map['startTime'] as String),
      treatment: pulumi.Output.create<String>(map['treatment'] as String),
    );
  }
}

