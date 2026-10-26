// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_canary_evaluation_metric_labels_response.dart';

/// Result data returned by getCanaryEvaluation.
class GetCanaryEvaluationResult {
  /// The stable version that is serving requests.
  final String? control;
  /// Create time of the canary evaluation.
  final String? createTime;
  /// End time for the evaluation's analysis.
  final String? endTime;
  /// Labels used to filter the metrics used for a canary evaluation.
  final GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse? metricLabels;
  /// Name of the canary evalution.
  final String? name;
  /// Start time for the canary evaluation's analysis.
  final String? startTime;
  /// The current state of the canary evaluation.
  final String? state;
  /// The newer version that is serving requests.
  final String? treatment;
  /// The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.
  final String? verdict;

  /// Creates a new [GetCanaryEvaluationResult].
  /// [control] The stable version that is serving requests.
  /// [createTime] Create time of the canary evaluation.
  /// [endTime] End time for the evaluation's analysis.
  /// [metricLabels] Labels used to filter the metrics used for a canary evaluation.
  /// [name] Name of the canary evalution.
  /// [startTime] Start time for the canary evaluation's analysis.
  /// [state] The current state of the canary evaluation.
  /// [treatment] The newer version that is serving requests.
  /// [verdict] The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.
  const GetCanaryEvaluationResult({
    this.control,
    this.createTime,
    this.endTime,
    this.metricLabels,
    this.name,
    this.startTime,
    this.state,
    this.treatment,
    this.verdict,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'control': ?control,
      'createTime': ?createTime,
      'endTime': ?endTime,
      'metricLabels': ?metricLabels?.toMap(),
      'name': ?name,
      'startTime': ?startTime,
      'state': ?state,
      'treatment': ?treatment,
      'verdict': ?verdict,
    };
  }

  factory GetCanaryEvaluationResult.fromMap(Map<String, dynamic> map) {
    return GetCanaryEvaluationResult(
      control: (() { final guardedValue = map['control']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metricLabels: (() { final guardedValue = map['metricLabels']; if (guardedValue == null) return null; return GoogleCloudApigeeV1CanaryEvaluationMetricLabelsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      treatment: (() { final guardedValue = map['treatment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verdict: (() { final guardedValue = map['verdict']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
