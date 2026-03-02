// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'breakdown.dart';
import 'data_set_plot_type.dart';
import 'data_set_target_axis.dart';
import 'dimension.dart';
import 'measure.dart';
import 'time_series_query.dart';

/// Groups a time series query definition with charting options.
class DataSet {
  /// Optional. The collection of breakdowns to be applied to the dataset.
  final pulumi.Input<List<Breakdown>>? breakdowns;
  /// Optional. A collection of dimension columns.
  final pulumi.Input<List<Dimension>>? dimensions;
  /// A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.
  final pulumi.Input<String>? legendTemplate;
  /// Optional. A collection of measures.
  final pulumi.Input<List<Measure>>? measures;
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final pulumi.Input<String>? minAlignmentPeriod;
  /// How this data should be plotted on the chart.
  final pulumi.Input<DataSetPlotType>? plotType;
  /// Optional. The target axis to use for plotting the metric.
  final pulumi.Input<DataSetTargetAxis>? targetAxis;
  /// Fields for querying time series data from the Stackdriver metrics API.
  final pulumi.Input<TimeSeriesQuery> timeSeriesQuery;

  /// Creates a new [DataSet].
  /// [breakdowns] Optional. The collection of breakdowns to be applied to the dataset.
  /// [dimensions] Optional. A collection of dimension columns.
  /// [legendTemplate] A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.
  /// [measures] Optional. A collection of measures.
  /// [minAlignmentPeriod] Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  /// [plotType] How this data should be plotted on the chart.
  /// [targetAxis] Optional. The target axis to use for plotting the metric.
  /// [timeSeriesQuery] Fields for querying time series data from the Stackdriver metrics API.
  DataSet({
    this.breakdowns,
    this.dimensions,
    this.legendTemplate,
    this.measures,
    this.minAlignmentPeriod,
    this.plotType,
    this.targetAxis,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'breakdowns': ?pulumi.Input.mapOptionalInputValue<List<Breakdown>, List<Map<String, dynamic>>>(breakdowns, (value) => pulumi.Input.encodeList<Breakdown, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dimensions': ?pulumi.Input.mapOptionalInputValue<List<Dimension>, List<Map<String, dynamic>>>(dimensions, (value) => pulumi.Input.encodeList<Dimension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'legendTemplate': ?legendTemplate,
      'measures': ?pulumi.Input.mapOptionalInputValue<List<Measure>, List<Map<String, dynamic>>>(measures, (value) => pulumi.Input.encodeList<Measure, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minAlignmentPeriod': ?minAlignmentPeriod,
      'plotType': ?pulumi.Input.mapOptionalInputValue<DataSetPlotType, String>(plotType, (value) => value.value),
      'targetAxis': ?pulumi.Input.mapOptionalInputValue<DataSetTargetAxis, String>(targetAxis, (value) => value.value),
      'timeSeriesQuery': pulumi.Input.mapInputValue<TimeSeriesQuery, Map<String, dynamic>>(timeSeriesQuery, (value) => value.toMap()),
    };
  }

  factory DataSet.fromMap(Map<String, dynamic> map) {
    return DataSet(
      breakdowns: map['breakdowns'] == null ? null : (pulumi.Input.decodeList<Breakdown>(map['breakdowns'], (value) => Breakdown.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dimensions: map['dimensions'] == null ? null : (pulumi.Input.decodeList<Dimension>(map['dimensions'], (value) => Dimension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      legendTemplate: map['legendTemplate'] == null ? null : (map['legendTemplate'] as String).input(),
      measures: map['measures'] == null ? null : (pulumi.Input.decodeList<Measure>(map['measures'], (value) => Measure.fromMap((value as Map).cast<String, dynamic>()))).input(),
      minAlignmentPeriod: map['minAlignmentPeriod'] == null ? null : (map['minAlignmentPeriod'] as String).input(),
      plotType: map['plotType'] == null ? null : (DataSetPlotType.fromValue(map['plotType'] as String)).input(),
      targetAxis: map['targetAxis'] == null ? null : (DataSetTargetAxis.fromValue(map['targetAxis'] as String)).input(),
      timeSeriesQuery: (TimeSeriesQuery.fromMap((map['timeSeriesQuery'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

