// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_query.dart';

/// Groups a time series query definition.
class PieChartDataSet {
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final pulumi.Input<String>? minAlignmentPeriod;
  /// Optional. A template for the name of the slice. This name will be displayed in the legend and the tooltip of the pie chart. It replaces the auto-generated names for the slices. For example, if the template is set to ${resource.labels.zone}, the zone's value will be used for the name instead of the default name.
  final pulumi.Input<String>? sliceNameTemplate;
  /// The query for the PieChart. See, google.monitoring.dashboard.v1.TimeSeriesQuery.
  final pulumi.Input<TimeSeriesQuery> timeSeriesQuery;

  /// Creates a new [PieChartDataSet].
  /// [minAlignmentPeriod] Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  /// [sliceNameTemplate] Optional. A template for the name of the slice. This name will be displayed in the legend and the tooltip of the pie chart. It replaces the auto-generated names for the slices. For example, if the template is set to ${resource.labels.zone}, the zone's value will be used for the name instead of the default name.
  /// [timeSeriesQuery] The query for the PieChart. See, google.monitoring.dashboard.v1.TimeSeriesQuery.
  PieChartDataSet({
    this.minAlignmentPeriod,
    this.sliceNameTemplate,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAlignmentPeriod': ?minAlignmentPeriod,
      'sliceNameTemplate': ?sliceNameTemplate,
      'timeSeriesQuery': pulumi.Input.mapInputValue<TimeSeriesQuery, Map<String, dynamic>>(timeSeriesQuery, (value) => value.toMap()),
    };
  }

  factory PieChartDataSet.fromMap(Map<String, dynamic> map) {
    return PieChartDataSet(
      minAlignmentPeriod: map['minAlignmentPeriod'] == null ? null : (map['minAlignmentPeriod'] as String).input(),
      sliceNameTemplate: map['sliceNameTemplate'] == null ? null : (map['sliceNameTemplate'] as String).input(),
      timeSeriesQuery: (TimeSeriesQuery.fromMap((map['timeSeriesQuery'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

