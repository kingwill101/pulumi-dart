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
  GetMetricArgs({
    required pulumi.Output<String> metricId,
    pulumi.Output<String>? project,
  }) :
      metricId = pulumi.Input.asInput<String>(metricId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricId': metricId,
      'project': ?project,
    };
  }

  factory GetMetricArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricArgs(
      metricId: pulumi.Output.create<String>(map['metricId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

