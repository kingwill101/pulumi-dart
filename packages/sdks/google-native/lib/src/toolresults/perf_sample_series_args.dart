// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_perf_sample_series.dart';

/// {@template pulumi_toolresults_v1beta3_perf_sample_series_args_doc}
/// The set of arguments for PerfSampleSeries.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_perf_sample_series_args_doc}
class PerfSampleSeriesArgs {
  /// Basic series represented by a line chart
  final pulumi.Input<BasicPerfSampleSeries>? basicPerfSampleSeries;
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> stepId;

  /// Creates a new [PerfSampleSeriesArgs].
  /// [basicPerfSampleSeries] Basic series represented by a line chart
  /// [executionId] Required.
  /// [historyId] Required.
  /// [project] Optional.
  /// [stepId] Required.
  PerfSampleSeriesArgs({
    this.basicPerfSampleSeries,
    required this.executionId,
    required this.historyId,
    this.project,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicPerfSampleSeries': ?pulumi.Input.mapOptionalInputValue<BasicPerfSampleSeries, Map<String, dynamic>>(basicPerfSampleSeries, (value) => value.toMap()),
      'executionId': executionId,
      'historyId': historyId,
      'project': ?project,
      'stepId': stepId,
    };
  }

  factory PerfSampleSeriesArgs.fromMap(Map<String, dynamic> map) {
    return PerfSampleSeriesArgs(
      basicPerfSampleSeries: map['basicPerfSampleSeries'] == null ? null : (BasicPerfSampleSeries.fromMap((map['basicPerfSampleSeries']! as Map).cast<String, dynamic>())).input(),
      executionId: (map['executionId'] as String).input(),
      historyId: (map['historyId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      stepId: (map['stepId'] as String).input(),
    );
  }
}

