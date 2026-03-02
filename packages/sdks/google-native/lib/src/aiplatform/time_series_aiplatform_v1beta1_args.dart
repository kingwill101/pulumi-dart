// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_value_type_aiplatform_v1beta1.dart';

/// {@template pulumi_aiplatform_v1beta1_time_series_aiplatform_v1beta1_args_doc}
/// The set of arguments for TimeSeries.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_time_series_aiplatform_v1beta1_args_doc}
class TimeSeriesAiplatformV1beta1Args {
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
  final pulumi.Input<TimeSeriesValueTypeAiplatformV1beta1> valueType;

  /// Creates a new [TimeSeriesAiplatformV1beta1Args].
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
  TimeSeriesAiplatformV1beta1Args({
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
      'valueType': pulumi.Input.mapInputValue<TimeSeriesValueTypeAiplatformV1beta1, String>(valueType, (value) => value.value),
    };
  }

  factory TimeSeriesAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return TimeSeriesAiplatformV1beta1Args(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      experimentId: (map['experimentId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      pluginData: map['pluginData'] == null ? null : (map['pluginData'] as String).input(),
      pluginName: map['pluginName'] == null ? null : (map['pluginName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      runId: (map['runId'] as String).input(),
      tensorboardId: (map['tensorboardId'] as String).input(),
      tensorboardTimeSeriesId: map['tensorboardTimeSeriesId'] == null ? null : (map['tensorboardTimeSeriesId'] as String).input(),
      valueType: (TimeSeriesValueTypeAiplatformV1beta1.fromValue(map['valueType'] as String)).input(),
    );
  }
}

