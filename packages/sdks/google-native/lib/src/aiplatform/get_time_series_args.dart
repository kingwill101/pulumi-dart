// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_time_series_args_doc}
/// Arguments for getTimeSeries.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_time_series_args_doc}
class GetTimeSeriesArgs {
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;
  final pulumi.Input<String> tensorboardId;
  final pulumi.Input<String> timeSeriesId;

  /// Creates a new [GetTimeSeriesArgs].
  /// [experimentId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [runId] Required.
  /// [tensorboardId] Required.
  /// [timeSeriesId] Required.
  GetTimeSeriesArgs({
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

  factory GetTimeSeriesArgs.fromMap(Map<String, dynamic> map) {
    return GetTimeSeriesArgs(
      experimentId: pulumi.Input.fromValue(map['experimentId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runId: pulumi.Input.fromValue(map['runId'] as String),
      tensorboardId: pulumi.Input.fromValue(map['tensorboardId'] as String),
      timeSeriesId: pulumi.Input.fromValue(map['timeSeriesId'] as String),
    );
  }
}

