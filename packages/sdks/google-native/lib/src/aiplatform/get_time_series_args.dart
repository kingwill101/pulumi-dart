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
    required pulumi.Output<String> experimentId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> runId,
    required pulumi.Output<String> tensorboardId,
    required pulumi.Output<String> timeSeriesId,
  }) :
      experimentId = pulumi.Input.asInput<String>(experimentId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      runId = pulumi.Input.asInput<String>(runId),
      tensorboardId = pulumi.Input.asInput<String>(tensorboardId),
      timeSeriesId = pulumi.Input.asInput<String>(timeSeriesId);

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
      experimentId: pulumi.Output.create<String>(map['experimentId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runId: pulumi.Output.create<String>(map['runId'] as String),
      tensorboardId: pulumi.Output.create<String>(map['tensorboardId'] as String),
      timeSeriesId: pulumi.Output.create<String>(map['timeSeriesId'] as String),
    );
  }
}

