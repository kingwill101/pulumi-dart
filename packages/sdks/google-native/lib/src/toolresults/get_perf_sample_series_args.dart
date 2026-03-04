// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_toolresults_v1beta3_get_perf_sample_series_args_doc}
/// Arguments for getPerfSampleSeries.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_get_perf_sample_series_args_doc}
class GetPerfSampleSeriesArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sampleSeriesId;
  final pulumi.Input<String> stepId;

  /// Creates a new [GetPerfSampleSeriesArgs].
  /// [executionId] Required.
  /// [historyId] Required.
  /// [project] Optional.
  /// [sampleSeriesId] Required.
  /// [stepId] Required.
  GetPerfSampleSeriesArgs({
    required this.executionId,
    required this.historyId,
    this.project,
    required this.sampleSeriesId,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionId': executionId,
      'historyId': historyId,
      'project': ?project,
      'sampleSeriesId': sampleSeriesId,
      'stepId': stepId,
    };
  }

  factory GetPerfSampleSeriesArgs.fromMap(Map<String, dynamic> map) {
    return GetPerfSampleSeriesArgs(
      executionId: pulumi.Input.fromValue(map['executionId'] as String),
      historyId: pulumi.Input.fromValue(map['historyId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sampleSeriesId: pulumi.Input.fromValue(map['sampleSeriesId'] as String),
      stepId: pulumi.Input.fromValue(map['stepId'] as String),
    );
  }
}
