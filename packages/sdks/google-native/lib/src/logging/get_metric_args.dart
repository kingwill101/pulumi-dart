// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_metric_args_doc}
/// Arguments for getMetric.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_metric_args_doc}
class GetMetricArgs {
  final pulumi.Input<String> metricId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetricArgs].
  /// [metricId] Required.
  /// [project] Optional.
  const GetMetricArgs({
    required this.metricId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricId': metricId,
      'project': ?project,
    };
  }

  factory GetMetricArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricArgs(
      metricId: pulumi.Input.fromValue(map['metricId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
