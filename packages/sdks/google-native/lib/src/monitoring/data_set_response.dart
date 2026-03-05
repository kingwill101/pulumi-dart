// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'breakdown_response.dart';
import 'dimension_response.dart';
import 'measure_response.dart';
import 'time_series_query_response.dart';

/// Groups a time series query definition with charting options.
class DataSetResponse {
  /// Optional. The collection of breakdowns to be applied to the dataset.
  final pulumi.Input<List<BreakdownResponse>> breakdowns;
  /// Optional. A collection of dimension columns.
  final pulumi.Input<List<DimensionResponse>> dimensions;
  /// A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.
  final pulumi.Input<String> legendTemplate;
  /// Optional. A collection of measures.
  final pulumi.Input<List<MeasureResponse>> measures;
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final pulumi.Input<String> minAlignmentPeriod;
  /// How this data should be plotted on the chart.
  final pulumi.Input<String> plotType;
  /// Optional. The target axis to use for plotting the metric.
  final pulumi.Input<String> targetAxis;
  /// Fields for querying time series data from the Stackdriver metrics API.
  final pulumi.Input<TimeSeriesQueryResponse> timeSeriesQuery;

  /// Creates a new [DataSetResponse].
  /// [breakdowns] Optional. The collection of breakdowns to be applied to the dataset.
  /// [dimensions] Optional. A collection of dimension columns.
  /// [legendTemplate] A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.
  /// [measures] Optional. A collection of measures.
  /// [minAlignmentPeriod] Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  /// [plotType] How this data should be plotted on the chart.
  /// [targetAxis] Optional. The target axis to use for plotting the metric.
  /// [timeSeriesQuery] Fields for querying time series data from the Stackdriver metrics API.
  DataSetResponse({
    required this.breakdowns,
    required this.dimensions,
    required this.legendTemplate,
    required this.measures,
    required this.minAlignmentPeriod,
    required this.plotType,
    required this.targetAxis,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakdowns': pulumi.Input.mapInputValue<List<BreakdownResponse>, List<Map<String, dynamic>>>(breakdowns, (value) => pulumi.Input.encodeList<BreakdownResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': pulumi.Input.mapInputValue<List<DimensionResponse>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<DimensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'legendTemplate': legendTemplate,
      'measures': pulumi.Input.mapInputValue<List<MeasureResponse>, List<Map<String, dynamic>>>(measures, (value) => pulumi.Input.encodeList<MeasureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minAlignmentPeriod': minAlignmentPeriod,
      'plotType': plotType,
      'targetAxis': targetAxis,
      'timeSeriesQuery': pulumi.Input.mapInputValue<TimeSeriesQueryResponse, Map<String, dynamic>>(timeSeriesQuery, (value) => value.toMap()),
    };
  }

  factory DataSetResponse.fromMap(Map<String, dynamic> map) {
    return DataSetResponse(
      breakdowns: pulumi.Input.fromValue(pulumi.Input.decodeList<BreakdownResponse>(map['breakdowns']!, (value) => BreakdownResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dimensions: pulumi.Input.fromValue(pulumi.Input.decodeList<DimensionResponse>(map['dimensions']!, (value) => DimensionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      legendTemplate: pulumi.Input.fromValue(map['legendTemplate'] as String),
      measures: pulumi.Input.fromValue(pulumi.Input.decodeList<MeasureResponse>(map['measures']!, (value) => MeasureResponse.fromMap((value as Map).cast<String, dynamic>()))),
      minAlignmentPeriod: pulumi.Input.fromValue(map['minAlignmentPeriod'] as String),
      plotType: pulumi.Input.fromValue(map['plotType'] as String),
      targetAxis: pulumi.Input.fromValue(map['targetAxis'] as String),
      timeSeriesQuery: pulumi.Input.fromValue(TimeSeriesQueryResponse.fromMap((map['timeSeriesQuery']! as Map).cast<String, dynamic>())),
    );
  }
}

