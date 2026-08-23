// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_series_query_response.dart';

/// Groups a time series query definition.
class PieChartDataSetResponse {
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final pulumi.Input<String> minAlignmentPeriod;
  /// Optional. A template for the name of the slice. This name will be displayed in the legend and the tooltip of the pie chart. It replaces the auto-generated names for the slices. For example, if the template is set to ${resource.labels.zone}, the zone's value will be used for the name instead of the default name.
  final pulumi.Input<String> sliceNameTemplate;
  /// The query for the PieChart. See, google.monitoring.dashboard.v1.TimeSeriesQuery.
  final pulumi.Input<TimeSeriesQueryResponse> timeSeriesQuery;

  /// Creates a new [PieChartDataSetResponse].
  /// [minAlignmentPeriod] Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  /// [sliceNameTemplate] Optional. A template for the name of the slice. This name will be displayed in the legend and the tooltip of the pie chart. It replaces the auto-generated names for the slices. For example, if the template is set to ${resource.labels.zone}, the zone's value will be used for the name instead of the default name.
  /// [timeSeriesQuery] The query for the PieChart. See, google.monitoring.dashboard.v1.TimeSeriesQuery.
  const PieChartDataSetResponse({
    required this.minAlignmentPeriod,
    required this.sliceNameTemplate,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minAlignmentPeriod': minAlignmentPeriod,
      'sliceNameTemplate': sliceNameTemplate,
      'timeSeriesQuery': pulumi.Input.mapInputValue<TimeSeriesQueryResponse, Map<String, dynamic>>(timeSeriesQuery, (value) => value.toMap()),
    };
  }

  factory PieChartDataSetResponse.fromMap(Map<String, dynamic> map) {
    return PieChartDataSetResponse(
      minAlignmentPeriod: pulumi.Input.fromValue(map['minAlignmentPeriod'] as String),
      sliceNameTemplate: pulumi.Input.fromValue(map['sliceNameTemplate'] as String),
      timeSeriesQuery: pulumi.Input.fromValue(TimeSeriesQueryResponse.fromMap((map['timeSeriesQuery']! as Map).cast<String, dynamic>())),
    );
  }
}
