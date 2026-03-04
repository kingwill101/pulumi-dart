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
  final pulumi.Input<GoogleCloudApigeeV1CanaryEvaluationMetricLabels>
  metricLabels;
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
    required this.control,
    required this.endTime,
    required this.instanceId,
    required this.metricLabels,
    required this.organizationId,
    required this.startTime,
    required this.treatment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'control': control,
      'endTime': endTime,
      'instanceId': instanceId,
      'metricLabels':
          pulumi.Input.mapInputValue<
            GoogleCloudApigeeV1CanaryEvaluationMetricLabels,
            Map<String, dynamic>
          >(metricLabels, (value) => value.toMap()),
      'organizationId': organizationId,
      'startTime': startTime,
      'treatment': treatment,
    };
  }

  factory CanaryEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return CanaryEvaluationArgs(
      control: pulumi.Input.fromValue(map['control'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      metricLabels: pulumi.Input.fromValue(
        GoogleCloudApigeeV1CanaryEvaluationMetricLabels.fromMap(
          (map['metricLabels']! as Map).cast<String, dynamic>(),
        ),
      ),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      treatment: pulumi.Input.fromValue(map['treatment'] as String),
    );
  }
}
