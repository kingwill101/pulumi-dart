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
      executionId: (map['executionId'] as String).input(),
      historyId: (map['historyId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sampleSeriesId: (map['sampleSeriesId'] as String).input(),
      stepId: (map['stepId'] as String).input(),
    );
  }
}

