// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_time_series_aiplatform_v1beta1_args_doc}
/// Arguments for getTimeSeries.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_time_series_aiplatform_v1beta1_args_doc}
class GetTimeSeriesAiplatformV1beta1Args {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;
  final pulumi.Input<String> tensorboardId;
  final pulumi.Input<String> timeSeriesId;

  /// Creates a new [GetTimeSeriesAiplatformV1beta1Args].
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [runId] Required.
  /// [tensorboardId] Required.
  /// [timeSeriesId] Required.
  GetTimeSeriesAiplatformV1beta1Args({
    required this.experimentId,
    required this.location,
    this.project,
    required this.runId,
    required this.tensorboardId,
    required this.timeSeriesId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentId': experimentId,
      'location': location,
      'project': ?project,
      'runId': runId,
      'tensorboardId': tensorboardId,
      'timeSeriesId': timeSeriesId,
    };
  }

  factory GetTimeSeriesAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesAiplatformV1beta1Args(
      experimentId: (map['experimentId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      runId: (map['runId'] as String).input(),
      tensorboardId: (map['tensorboardId'] as String).input(),
      timeSeriesId: (map['timeSeriesId'] as String).input(),
    );
  }
}

