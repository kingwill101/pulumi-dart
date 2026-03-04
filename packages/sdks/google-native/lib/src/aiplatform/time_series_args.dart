// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_value_type.dart';

/// {@template pulumi_aiplatform_v1_time_series_args_doc}
/// The set of arguments for TimeSeries.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_time_series_args_doc}
class TimeSeriesArgs {
  /// Description of this TensorboardTimeSeries.
  final pulumi.Input<String>? description;

  /// User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  final pulumi.Input<String> displayName;

  /// Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> experimentId;
  final pulumi.Input<String>? location;

  /// Data of the current plugin, with the size limited to 65KB.
  final pulumi.Input<String>? pluginData;

  /// Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  final pulumi.Input<String>? pluginName;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> runId;
  final pulumi.Input<String> tensorboardId;

  /// Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  final pulumi.Input<String>? tensorboardTimeSeriesId;

  /// Immutable. Type of TensorboardTimeSeries value.
  final pulumi.Input<TimeSeriesValueType> valueType;

  /// Creates a new [TimeSeriesArgs].
  /// [description] Description of this TensorboardTimeSeries.
  /// [displayName] User provided name of this TensorboardTimeSeries. This value should be unique among all TensorboardTimeSeries resources belonging to the same TensorboardRun resource (parent resource).
  /// [etag] Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [experimentId] Required.
  /// [location] Optional.
  /// [pluginData] Data of the current plugin, with the size limited to 65KB.
  /// [pluginName] Immutable. Name of the plugin this time series pertain to. Such as Scalar, Tensor, Blob
  /// [project] Optional.
  /// [runId] Required.
  /// [tensorboardId] Required.
  /// [tensorboardTimeSeriesId] Optional. The user specified unique ID to use for the TensorboardTimeSeries, which becomes the final component of the TensorboardTimeSeries's resource name. This value should match "a-z0-9{0, 127}"
  /// [valueType] Immutable. Type of TensorboardTimeSeries value.
  TimeSeriesArgs({
    this.description,
    required this.displayName,
    this.etag,
    required this.experimentId,
    this.location,
    this.pluginData,
    this.pluginName,
    this.project,
    required this.runId,
    required this.tensorboardId,
    this.tensorboardTimeSeriesId,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'experimentId': experimentId,
      'location': ?location,
      'pluginData': ?pluginData,
      'pluginName': ?pluginName,
      'project': ?project,
      'runId': runId,
      'tensorboardId': tensorboardId,
      'tensorboardTimeSeriesId': ?tensorboardTimeSeriesId,
      'valueType': pulumi.Input.mapInputValue<TimeSeriesValueType, String>(
        valueType,
        (value) => value.wireValue,
      ),
    };
  }

  factory TimeSeriesArgs.fromMap(Map<String, dynamic> map) {
    return TimeSeriesArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      experimentId: pulumi.Input.fromValue(map['experimentId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pluginData: (() {
        final guardedValue = map['pluginData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pluginName: (() {
        final guardedValue = map['pluginName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runId: pulumi.Input.fromValue(map['runId'] as String),
      tensorboardId: pulumi.Input.fromValue(map['tensorboardId'] as String),
      tensorboardTimeSeriesId: (() {
        final guardedValue = map['tensorboardTimeSeriesId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      valueType: pulumi.Input.fromValue(
        TimeSeriesValueType.fromValue(map['valueType']! as String),
      ),
    );
  }
}
