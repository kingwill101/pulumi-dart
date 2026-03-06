// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation_response.dart';
import 'pick_time_series_filter_response.dart';
import 'statistical_time_series_filter_response.dart';

/// A filter that defines a subset of time series data that is displayed in a widget. Time series data is fetched using the ListTimeSeries (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.
class TimeSeriesFilterResponse {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final pulumi.Input<AggregationResponse> aggregation;
  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final pulumi.Input<String> filter;
  /// Ranking based time series filter.
  final pulumi.Input<PickTimeSeriesFilterResponse> pickTimeSeriesFilter;
  /// Apply a second aggregation after aggregation is applied.
  final pulumi.Input<AggregationResponse> secondaryAggregation;
  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final pulumi.Input<StatisticalTimeSeriesFilterResponse> statisticalTimeSeriesFilter;

  /// Creates a new [TimeSeriesFilterResponse].
  /// [aggregation] By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  /// [filter] The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  /// [pickTimeSeriesFilter] Ranking based time series filter.
  /// [secondaryAggregation] Apply a second aggregation after aggregation is applied.
  /// [statisticalTimeSeriesFilter] Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  const TimeSeriesFilterResponse({
    required this.aggregation,
    required this.filter,
    required this.pickTimeSeriesFilter,
    required this.secondaryAggregation,
    required this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': pulumi.Input.mapInputValue<AggregationResponse, Map<String, dynamic>>(aggregation, (value) => value.toMap()),
      'filter': filter,
      'pickTimeSeriesFilter': pulumi.Input.mapInputValue<PickTimeSeriesFilterResponse, Map<String, dynamic>>(pickTimeSeriesFilter, (value) => value.toMap()),
      'secondaryAggregation': pulumi.Input.mapInputValue<AggregationResponse, Map<String, dynamic>>(secondaryAggregation, (value) => value.toMap()),
      'statisticalTimeSeriesFilter': pulumi.Input.mapInputValue<StatisticalTimeSeriesFilterResponse, Map<String, dynamic>>(statisticalTimeSeriesFilter, (value) => value.toMap()),
    };
  }

  factory TimeSeriesFilterResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterResponse(
      aggregation: pulumi.Input.fromValue(AggregationResponse.fromMap((map['aggregation']! as Map).cast<String, dynamic>())),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      pickTimeSeriesFilter: pulumi.Input.fromValue(PickTimeSeriesFilterResponse.fromMap((map['pickTimeSeriesFilter']! as Map).cast<String, dynamic>())),
      secondaryAggregation: pulumi.Input.fromValue(AggregationResponse.fromMap((map['secondaryAggregation']! as Map).cast<String, dynamic>())),
      statisticalTimeSeriesFilter: pulumi.Input.fromValue(StatisticalTimeSeriesFilterResponse.fromMap((map['statisticalTimeSeriesFilter']! as Map).cast<String, dynamic>())),
    );
  }
}

