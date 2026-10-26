// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiOnlineEvaluatorMetricSource {
  /// Inline metric config, provided as a JSON-formatted string using
  /// camelCase field names to match the API format (see the
  /// [Metric API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/Metric)).
  /// The suggested predefined `metricSpecName` values depend on the
  /// evaluation scope configured in `cloudObservability`; a predefined
  /// metric must match the scope or the create request will be rejected:
  final pulumi.Input<String?>? metric;
  /// Resource name of a registered metric (a
  /// `gcp.vertex.AiEvaluationMetric`), e.g.
  /// projects/{{project}}/locations/{{region}}/evaluationMetrics/{{id}}.
  final pulumi.Input<String?>? metricResourceName;

  /// Creates a new [AiOnlineEvaluatorMetricSource].
  /// [metric] Inline metric config, provided as a JSON-formatted string using
  /// [metricResourceName] Resource name of a registered metric (a
  const AiOnlineEvaluatorMetricSource({
    this.metric,
    this.metricResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metric': ?metric,
      'metricResourceName': ?metricResourceName,
    };
  }

  factory AiOnlineEvaluatorMetricSource.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorMetricSource(
      metric: (() { final guardedValue = map['metric']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricResourceName: (() { final guardedValue = map['metricResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
