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
    required pulumi.Output<String> executionId,
    required pulumi.Output<String> historyId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sampleSeriesId,
    required pulumi.Output<String> stepId,
  }) :
      executionId = pulumi.Input.asInput<String>(executionId),
      historyId = pulumi.Input.asInput<String>(historyId),
      project = pulumi.Input.asOptionalInput<String>(project),
      sampleSeriesId = pulumi.Input.asInput<String>(sampleSeriesId),
      stepId = pulumi.Input.asInput<String>(stepId);

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
      executionId: pulumi.Output.create<String>(map['executionId'] as String),
      historyId: pulumi.Output.create<String>(map['historyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sampleSeriesId: pulumi.Output.create<String>(map['sampleSeriesId'] as String),
      stepId: pulumi.Output.create<String>(map['stepId'] as String),
    );
  }
}

