// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregation.dart';
import 'pick_time_series_filter.dart';
import 'statistical_time_series_filter.dart';

/// A filter that defines a subset of time series data that is displayed in a widget. Time series data is fetched using the ListTimeSeries (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.
class TimeSeriesFilter {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final pulumi.Input<Aggregation>? aggregation;
  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final pulumi.Input<String> filter;
  /// Ranking based time series filter.
  final pulumi.Input<PickTimeSeriesFilter>? pickTimeSeriesFilter;
  /// Apply a second aggregation after aggregation is applied.
  final pulumi.Input<Aggregation>? secondaryAggregation;
  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final pulumi.Input<StatisticalTimeSeriesFilter>? statisticalTimeSeriesFilter;

  /// Creates a new [TimeSeriesFilter].
  /// [aggregation] By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  /// [filter] The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  /// [pickTimeSeriesFilter] Ranking based time series filter.
  /// [secondaryAggregation] Apply a second aggregation after aggregation is applied.
  /// [statisticalTimeSeriesFilter] Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  const TimeSeriesFilter({
    this.aggregation,
    required this.filter,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': ?pulumi.Input.mapOptionalInputValue<Aggregation, Map<String, dynamic>>(aggregation, (value) => value.toMap()),
      'filter': filter,
      'pickTimeSeriesFilter': ?pulumi.Input.mapOptionalInputValue<PickTimeSeriesFilter, Map<String, dynamic>>(pickTimeSeriesFilter, (value) => value.toMap()),
      'secondaryAggregation': ?pulumi.Input.mapOptionalInputValue<Aggregation, Map<String, dynamic>>(secondaryAggregation, (value) => value.toMap()),
      'statisticalTimeSeriesFilter': ?pulumi.Input.mapOptionalInputValue<StatisticalTimeSeriesFilter, Map<String, dynamic>>(statisticalTimeSeriesFilter, (value) => value.toMap()),
    };
  }

  factory TimeSeriesFilter.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilter(
      aggregation: (() { final guardedValue = map['aggregation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Aggregation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      pickTimeSeriesFilter: (() { final guardedValue = map['pickTimeSeriesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PickTimeSeriesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryAggregation: (() { final guardedValue = map['secondaryAggregation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Aggregation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statisticalTimeSeriesFilter: (() { final guardedValue = map['statisticalTimeSeriesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatisticalTimeSeriesFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

